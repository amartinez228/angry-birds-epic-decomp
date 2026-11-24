//! Original legacy clip curves, evaluated on the recovered transform hierarchy.
//! Quaternion components use cubic Hermite interpolation then normalization.
//! Exact Unity interpolation edge cases and clip blending remain unverified.
use macroquad::prelude::{Mat4, Quat, Vec3, Vec4};
use std::collections::HashMap;

const DATA: &[u8] = include_bytes!("../../../assets/animation.bin");

struct Node {
    parent: Option<usize>,
    position: Vec3,
    rotation: Quat,
    scale: Vec3,
}
#[derive(Clone, Copy)]
struct Key {
    time: f32,
    value: Vec4,
    incoming: Vec4,
    outgoing: Vec4,
}
struct Curve {
    node: usize,
    kind: u32,
    keys: Vec<Key>,
}
impl Curve {
    fn sample(&self, time: f32) -> Option<Vec4> {
        let first = self.keys.first()?;
        let upper = self.keys.partition_point(|key| key.time <= time);
        if upper == 0 {
            return Some(first.value);
        }
        let left = self.keys[upper - 1];
        if upper == self.keys.len() {
            return Some(left.value);
        }
        let right = self.keys[upper];
        let duration = right.time - left.time;
        if duration <= 0. {
            return Some(right.value);
        }
        let t = (time - left.time) / duration;
        let t2 = t * t;
        let t3 = t2 * t;
        let mut value = Vec4::ZERO;
        for axis in 0..4 {
            value[axis] = if left.outgoing[axis].is_infinite() || right.incoming[axis].is_infinite()
            {
                left.value[axis]
            } else {
                (2. * t3 - 3. * t2 + 1.) * left.value[axis]
                    + (t3 - 2. * t2 + t) * duration * left.outgoing[axis]
                    + (-2. * t3 + 3. * t2) * right.value[axis]
                    + (t3 - t2) * duration * right.incoming[axis]
            };
        }
        Some(value)
    }
}
struct Clip {
    fps: f32,
    end: f32,
    wrap: u32,
    curves: Vec<Curve>,
    frames: Vec<SpriteFrame>,
    cues: Vec<(f32, String)>,
}
#[derive(Clone, Copy, Debug)]
pub struct ClipTiming {
    pub duration: f32,
    pub impact: Option<f32>,
    pub projectile: Option<f32>,
}
impl Clip {
    fn time(&self, seconds: f32) -> f32 {
        let elapsed = seconds.max(0.) * self.fps;
        if self.wrap == 2 && self.end > 0. {
            elapsed.rem_euclid(self.end)
        } else {
            elapsed.min(self.end)
        }
    }
}
struct SpriteFrame {
    time: f32,
    changes: Vec<SpriteChange>,
}
struct SpriteChange {
    node: usize,
    flags: u32,
    material: Option<usize>,
    depth: i32,
    corners: [[f32; 2]; 4],
    uv: [f32; 4],
}
#[derive(Default, Debug, Clone, PartialEq)]
pub struct SpriteOverrides {
    pub visible: Option<bool>,
    pub material: Option<Option<usize>>,
    pub depth: Option<i32>,
    pub corners: Option<[[f32; 2]; 4]>,
    pub uv: Option<[f32; 4]>,
}
pub struct ActorAnimation {
    default: String,
    paths: HashMap<String, usize>,
    nodes: Vec<Node>,
    clips: HashMap<String, Clip>,
}
impl ActorAnimation {
    pub fn node_index(&self, path: &str) -> Option<usize> {
        self.paths.get(path).copied()
    }

    pub fn default_pose(&self, seconds: f32) -> Vec<Mat4> {
        self.pose(&self.default, seconds)
    }
    pub fn default_name(&self) -> &str {
        &self.default
    }
    pub fn has_clip(&self, name: &str) -> bool {
        self.clips.contains_key(name)
    }
    pub fn timing(&self, name: &str) -> Option<ClipTiming> {
        let clip = self.clips.get(name)?;
        let cue = |tag: &str| {
            clip.cues
                .iter()
                .find(|(_, name)| name == tag)
                .map(|(time, _)| time / clip.fps)
        };
        Some(ClipTiming {
            duration: clip.end / clip.fps,
            impact: cue("Impact"),
            projectile: cue("Projectile"),
        })
    }

    pub fn sprite_frames(&self, name: &str, seconds: f32) -> HashMap<usize, SpriteOverrides> {
        let mut result = HashMap::new();
        let Some(clip) = self.clips.get(name) else {
            return result;
        };
        let time = clip.time(seconds);
        for frame in clip.frames.iter().take_while(|frame| frame.time <= time) {
            for change in &frame.changes {
                let state: &mut SpriteOverrides = result.entry(change.node).or_default();
                // Native FireTextureTrigger returns immediately for HideTexture.
                state.visible = Some(change.flags & (1 << 1) == 0);
                if state.visible == Some(false) {
                    continue;
                }
                if change.flags & (1 << 2) != 0 {
                    state.material = Some(change.material);
                }
                if change.flags & (1 << 3) != 0 {
                    state.depth = Some(change.depth);
                }
                if change.flags & ((1 << 4) | (1 << 5)) != 0 {
                    state.corners = Some(change.corners);
                }
                if change.flags & (1 << 4) != 0 {
                    state.uv = Some(change.uv);
                }
            }
        }
        result
    }

    pub fn pose(&self, name: &str, seconds: f32) -> Vec<Mat4> {
        let mut positions: Vec<_> = self.nodes.iter().map(|node| node.position).collect();
        let mut rotations: Vec<_> = self.nodes.iter().map(|node| node.rotation).collect();
        let mut scales: Vec<_> = self.nodes.iter().map(|node| node.scale).collect();
        if let Some(clip) = self.clips.get(name) {
            let time = clip.time(seconds);
            for curve in &clip.curves {
                let Some(value) = curve.sample(time) else {
                    continue;
                };
                match curve.kind {
                    0 => {
                        let quaternion = Quat::from_xyzw(value.x, value.y, value.z, value.w);
                        rotations[curve.node] = if quaternion.length_squared() > f32::EPSILON {
                            quaternion.normalize()
                        } else {
                            Quat::IDENTITY
                        };
                    }
                    1 => positions[curve.node] = value.truncate(),
                    2 => scales[curve.node] = value.truncate(),
                    _ => unreachable!("Validated curve kind"),
                }
            }
        }
        let mut world = Vec::with_capacity(self.nodes.len());
        for (index, node) in self.nodes.iter().enumerate() {
            let local = Mat4::from_scale_rotation_translation(
                scales[index],
                rotations[index],
                positions[index],
            );
            let matrix = node.parent.map_or(local, |parent| world[parent] * local);
            world.push(matrix);
        }
        world
    }
}

pub struct AnimationLibrary {
    actors: HashMap<String, ActorAnimation>,
}
impl AnimationLibrary {
    pub fn embedded() -> Self {
        Self::parse(DATA).expect("Validated original animation pack")
    }
    pub fn actor(&self, asset: &str) -> Option<&ActorAnimation> {
        self.actors.get(asset)
    }

    fn parse(data: &[u8]) -> Result<Self, &'static str> {
        let mut reader = Reader { data, position: 0 };
        if reader.bytes(8)? != b"EPICAN03" {
            return Err("Animation pack header");
        }
        let mut actors = HashMap::new();
        for _ in 0..reader.count(1024)? {
            let asset = reader.string()?;
            let default = reader.string()?;
            let material_count = reader.count(128)?;
            let mut nodes = Vec::new();
            let mut paths = HashMap::new();
            for index in 0..reader.count(4096)? {
                let path = reader.string()?;
                if paths.insert(path, index).is_some() {
                    return Err("Duplicate rig path");
                }
                let encoded = reader.integer()? as usize;
                let parent = if encoded == 0 {
                    None
                } else {
                    if encoded > index {
                        return Err("Rig parent is not earlier in hierarchy");
                    }
                    Some(encoded - 1)
                };
                let position = reader.vector(3)?.truncate();
                let rotation = reader.vector(4)?;
                let scale = reader.vector(3)?.truncate();
                if !position.is_finite() || !rotation.is_finite() || !scale.is_finite() {
                    return Err("Non-finite rest transform");
                }
                nodes.push(Node {
                    parent,
                    position,
                    rotation: Quat::from_xyzw(rotation.x, rotation.y, rotation.z, rotation.w),
                    scale,
                });
            }
            if nodes.is_empty() {
                return Err("Empty rig");
            }
            let mut clips = HashMap::new();
            for _ in 0..reader.count(4096)? {
                let name = reader.string()?;
                let fps = reader.float()?;
                let end = reader.float()?;
                let wrap = reader.integer()?;
                if !fps.is_finite() || fps <= 0. || !end.is_finite() || end < 0. {
                    return Err("Invalid clip timing");
                }
                let mut curves = Vec::new();
                for _ in 0..reader.count(10000)? {
                    let node = reader.integer()? as usize;
                    let kind = reader.integer()?;
                    if node >= nodes.len() || kind > 2 {
                        return Err("Curve binding outside rig");
                    }
                    let dimension = if kind == 0 { 4 } else { 3 };
                    let mut keys = Vec::new();
                    let mut previous = f32::NEG_INFINITY;
                    for _ in 0..reader.count(100000)? {
                        let time = reader.float()?;
                        let value = reader.vector(dimension)?;
                        let incoming = reader.vector(dimension)?;
                        let outgoing = reader.vector(dimension)?;
                        if !time.is_finite()
                            || time < previous
                            || !value.is_finite()
                            || incoming.is_nan()
                            || outgoing.is_nan()
                        {
                            return Err("Invalid curve key");
                        }
                        keys.push(Key {
                            time,
                            value,
                            incoming,
                            outgoing,
                        });
                        previous = time;
                    }
                    curves.push(Curve { node, kind, keys });
                }
                let mut frames = Vec::new();
                let mut previous_frame = f32::NEG_INFINITY;
                for _ in 0..reader.count(100000)? {
                    let time = reader.float()?;
                    if !time.is_finite() || time < previous_frame {
                        return Err("Invalid sprite frame time");
                    }
                    previous_frame = time;
                    let mut changes = Vec::new();
                    for _ in 0..reader.count(4096)? {
                        let node = reader.integer()? as usize;
                        let flags = reader.integer()?;
                        let encoded = reader.integer()? as usize;
                        let depth = reader.integer()? as i32;
                        if node >= nodes.len() || flags > 127 || encoded > material_count {
                            return Err("Invalid sprite frame binding");
                        }
                        let mut corners = [[0.; 2]; 4];
                        for corner in &mut corners {
                            *corner = [reader.float()?, reader.float()?];
                        }
                        let uv = reader.vector(4)?.to_array();
                        if !corners
                            .iter()
                            .flatten()
                            .chain(uv.iter())
                            .all(|value| value.is_finite())
                        {
                            return Err("Non-finite sprite frame geometry");
                        }
                        changes.push(SpriteChange {
                            node,
                            flags,
                            material: encoded.checked_sub(1),
                            depth,
                            corners,
                            uv,
                        });
                    }
                    frames.push(SpriteFrame { time, changes });
                }
                let mut cues = Vec::new();
                let mut previous_cue = f32::NEG_INFINITY;
                for _ in 0..reader.count(100000)? {
                    let time = reader.float()?;
                    let tag = reader.string()?;
                    if !time.is_finite() || time < previous_cue {
                        return Err("Invalid user cue time");
                    }
                    previous_cue = time;
                    cues.push((time, tag));
                }
                if clips
                    .insert(
                        name,
                        Clip {
                            fps,
                            end,
                            wrap,
                            curves,
                            frames,
                            cues,
                        },
                    )
                    .is_some()
                {
                    return Err("Duplicate clip");
                }
            }
            if !clips.contains_key(&default) {
                return Err("Default clip missing");
            }
            if actors
                .insert(
                    asset,
                    ActorAnimation {
                        default,
                        paths,
                        nodes,
                        clips,
                    },
                )
                .is_some()
            {
                return Err("Duplicate actor");
            }
        }
        if reader.position != data.len() {
            return Err("Trailing animation bytes");
        }
        Ok(Self { actors })
    }
}

struct Reader<'a> {
    data: &'a [u8],
    position: usize,
}
impl<'a> Reader<'a> {
    fn bytes(&mut self, size: usize) -> Result<&'a [u8], &'static str> {
        let end = self
            .position
            .checked_add(size)
            .ok_or("Animation input overflow")?;
        let bytes = self
            .data
            .get(self.position..end)
            .ok_or("Truncated animation pack")?;
        self.position = end;
        Ok(bytes)
    }
    fn integer(&mut self) -> Result<u32, &'static str> {
        Ok(u32::from_le_bytes(self.bytes(4)?.try_into().unwrap()))
    }
    fn count(&mut self, max: usize) -> Result<usize, &'static str> {
        let value = self.integer()? as usize;
        if value > max {
            return Err("Oversized animation array");
        }
        Ok(value)
    }
    fn string(&mut self) -> Result<String, &'static str> {
        let count = self.count(4096)?;
        String::from_utf8(self.bytes(count)?.to_vec()).map_err(|_| "Invalid animation string")
    }
    fn float(&mut self) -> Result<f32, &'static str> {
        Ok(f32::from_bits(self.integer()?))
    }
    fn vector(&mut self, dimension: usize) -> Result<Vec4, &'static str> {
        let mut value = Vec4::ZERO;
        for axis in 0..dimension {
            value[axis] = self.float()?;
        }
        Ok(value)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn all_original_clips_evaluate_finite_hierarchies() {
        let library = AnimationLibrary::embedded();
        assert_eq!(library.actors.len(), 22);
        assert_eq!(
            library
                .actors
                .values()
                .map(|actor| actor.clips.len())
                .sum::<usize>(),
            344
        );
        assert_eq!(
            library
                .actors
                .values()
                .flat_map(|actor| actor.clips.values())
                .map(|clip| clip.frames.len())
                .sum::<usize>(),
            2352
        );
        for actor in library.actors.values() {
            for (name, clip) in &actor.clips {
                for seconds in [0., clip.end / clip.fps / 2., clip.end / clip.fps, 200.] {
                    assert!(
                        actor
                            .pose(name, seconds)
                            .iter()
                            .all(|matrix| matrix.is_finite()),
                        "{name}: {seconds}"
                    );
                    let frames = actor.sprite_frames(name, seconds);
                    for state in frames.values() {
                        assert!(state
                            .corners
                            .iter()
                            .flatten()
                            .flatten()
                            .chain(state.uv.iter().flatten())
                            .all(|value| value.is_finite()));
                    }
                }
            }
        }
    }
    #[test]
    fn original_red_idle_uses_24_speed_and_loops_at_one_and_a_half_seconds() {
        let library = AnimationLibrary::embedded();
        let red = library.actor("RedBird").unwrap();
        assert_eq!(red.clips["Idle"].fps, 24.);
        assert_eq!(red.clips["Blink"].fps, 16.);
        assert_eq!(red.default_pose(0.), red.default_pose(1.5));
        assert_ne!(red.default_pose(0.), red.default_pose(0.375));
    }
    #[test]
    fn truncated_and_invalid_runtime_packs_are_rejected() {
        for bytes in [
            &DATA[..5],
            &DATA[..100],
            &DATA[..DATA.len() - 1],
            b"INVALID!".as_slice(),
        ] {
            assert!(AnimationLibrary::parse(bytes).is_err());
        }
    }
    #[test]
    fn hermite_preserves_endpoints_and_stepped_components() {
        let curve = Curve {
            node: 0,
            kind: 1,
            keys: vec![
                Key {
                    time: 0.,
                    value: Vec4::ZERO,
                    incoming: Vec4::ZERO,
                    outgoing: Vec4::new(0., f32::INFINITY, 0., 0.),
                },
                Key {
                    time: 2.,
                    value: Vec4::splat(10.),
                    incoming: Vec4::ZERO,
                    outgoing: Vec4::ZERO,
                },
            ],
        };
        assert_eq!(curve.sample(0.), Some(Vec4::ZERO));
        assert_eq!(curve.sample(2.), Some(Vec4::splat(10.)));
        assert_eq!(curve.sample(1.), Some(Vec4::new(5., 0., 5., 5.)));
    }

    #[test]
    fn original_red_blink_changes_lid_uvs_and_restores_them_at_clip_end() {
        let library = AnimationLibrary::embedded();
        let red = library.actor("RedBird").unwrap();
        let lid = red
            .node_index("Root/Body/Face/Eye_Left/Lid_Left/Lid_Left_Sprite")
            .unwrap();
        let before = red.sprite_frames("Blink", 0.);
        let during = red.sprite_frames("Blink", 2. / 16.);
        let after = red.sprite_frames("Blink", 6. / 16.);
        assert_eq!(before[&lid].material, Some(Some(1)));
        assert_ne!(before[&lid].uv, during[&lid].uv);
        assert_eq!(before[&lid].uv, after[&lid].uv);
        assert_eq!(during[&lid].visible, Some(true));
    }

    #[test]
    fn original_hide_events_remove_root_sprite_and_loop_restores_start_state() {
        let library = AnimationLibrary::embedded();
        let red = library.actor("RedBird").unwrap();
        let root = red.node_index("Root/Root_Sprite").unwrap();
        let first = red.sprite_frames("Idle", 0.);
        assert_eq!(first[&root].visible, Some(false));
        assert_eq!(first, red.sprite_frames("Idle", 1.5));
        let body = red.node_index("Root/Body/Body_Sprite").unwrap();
        assert_eq!(first[&body].depth, Some(25));
        assert_eq!(first[&body].material, Some(Some(0)));
    }
}
