//! NSSound plays the embedded WAVE data asynchronously without temporary files.
//! Calls come from the native main thread; retain Cocoa objects on that thread
//! until stop/replacement, including non-looping sounds which finish themselves.
//! API reference: https://developer.apple.com/documentation/appkit/nssound
use super::MusicTrack;
use objc_rs::{
    class, msg_send,
    rc::{autoreleasepool, StrongPtr},
    runtime::{Object, BOOL, NO, YES},
    sel, sel_impl,
};
use std::{cell::RefCell, ffi::c_void};

#[link(name = "AppKit", kind = "framework")]
extern "C" {}
#[link(name = "Foundation", kind = "framework")]
extern "C" {}

struct Sound {
    object: StrongPtr,
    // Keep the NSData alive for the entire asynchronous playback lifetime.
    _data: StrongPtr,
}

impl Drop for Sound {
    fn drop(&mut self) {
        // SAFETY: object owns the +1 NSSound returned by initWithData:. stop
        // has BOOL return type. StrongPtr releases it after playback is stopped.
        unsafe {
            let _: BOOL = msg_send![*self.object, stop];
        }
    }
}

thread_local! {
    static SOUND: RefCell<Option<Sound>> = const { RefCell::new(None) };
}

pub fn stop() {
    // Drop the previous sound outside the thread-local RefCell borrow.
    let previous = SOUND.with(|slot| slot.borrow_mut().take());
    drop(previous);
}

/// Native diagnostic: decoding duration, configured loops and active playback.
pub fn playback_matches(looping: bool) -> bool {
    SOUND.with(|slot| {
        let slot = slot.borrow();
        let Some(sound) = slot.as_ref() else {
            return false;
        };
        // SAFETY: these getters use the documented NSSound return types and
        // object is retained for the full borrow on the native main thread.
        unsafe {
            let duration: f64 = msg_send![*sound.object, duration];
            let loops: BOOL = msg_send![*sound.object, loops];
            let playing: BOOL = msg_send![*sound.object, isPlaying];
            duration.is_finite() && duration > 0. && (loops != NO) == looping && playing != NO
        }
    })
}

pub fn stopped() -> bool {
    SOUND.with(|slot| slot.borrow().is_none())
}

pub fn play(track: &MusicTrack, looping: bool) -> bool {
    stop();
    autoreleasepool(|| {
        // SAFETY: signatures match Foundation NSData and AppKit NSSound in the
        // platform SDK. usize is NSUInteger; BOOL comes from objc-rs so its
        // architecture-dependent ABI matches both Apple silicon and Intel.
        // Both init methods return owned (+1), nullable objects. No borrowed
        // object or autoreleased value escapes its scope without ownership.
        unsafe {
            let data: *mut Object = msg_send![class!(NSData), alloc];
            let data: *mut Object = msg_send![data,
                initWithBytes: track.wave.as_ptr().cast::<c_void>()
                length: track.wave.len()
            ];
            if data.is_null() {
                return false;
            }
            let data = StrongPtr::new(data);
            let object: *mut Object = msg_send![class!(NSSound), alloc];
            let object: *mut Object = msg_send![object, initWithData: *data];
            if object.is_null() {
                return false;
            }
            let sound = Sound {
                object: StrongPtr::new(object),
                _data: data,
            };
            let _: () = msg_send![*sound.object, setLoops: if looping { YES } else { NO }];
            let started: BOOL = msg_send![*sound.object, play];
            if started == NO {
                return false; // Sound::drop stops and releases both objects.
            }
            SOUND.with(|slot| *slot.borrow_mut() = Some(sound));
            true
        }
    })
}
