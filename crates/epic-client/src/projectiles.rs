//! Original static projectile sprites and CHMotionTween curve evaluation.
//! Camera/choreography endpoints, trails and animated visual clips are pending.
use macroquad::prelude::*;
use std::collections::HashMap;

pub struct MotionKey {
    time: f32,
    value: f32,
    incoming: f32,
    outgoing: f32,
}
pub struct ProjectileSprite {
    image: &'static [u8],
    key: &'static str,
    color: [f32; 4],
    vertices: [[f32; 4]; 4],
}
pub struct ProjectileDefinition {
    pub id: &'static str,
    pub duration: f32,
    start_offset: [f32; 2],
    end_offset: [f32; 2],
    curve: &'static [MotionKey],
    axes: &'static [(usize, &'static [MotionKey])],
    sprites: &'static [ProjectileSprite],
}
pub struct AttachmentDefinition {
    pub asset: &'static str,
    pub main_hand: Option<&'static str>,
    pub off_hand: Option<&'static str>,
    pub center: Option<&'static str>,
}
include!("projectiles_generated.rs");

fn sample(keys: &[MotionKey], time: f32) -> f32 {
    let Some(first) = keys.first() else {
        return time;
    };
    let upper = keys.partition_point(|key| key.time <= time);
    if upper == 0 {
        return first.value;
    }
    let left = &keys[upper - 1];
    let Some(right) = keys.get(upper) else {
        return left.value;
    };
    let duration = right.time - left.time;
    if duration <= 0. {
        return right.value;
    }
    if left.outgoing.is_infinite() || right.incoming.is_infinite() {
        return left.value;
    }
    let t = (time - left.time) / duration;
    let t2 = t * t;
    let t3 = t2 * t;
    (2. * t3 - 3. * t2 + 1.) * left.value
        + (t3 - 2. * t2 + t) * duration * left.outgoing
        + (-2. * t3 + 3. * t2) * right.value
        + (t3 - t2) * duration * right.incoming
}

impl ProjectileDefinition {
    pub fn visible(&self) -> bool {
        !self.sprites.is_empty()
    }
    pub fn progress(&self, elapsed: f32, inverted: bool) -> Vec2 {
        let time = (elapsed / self.duration).clamp(0., 1.);
        let mut progress = if self.axes.is_empty() {
            Vec3::splat(sample(self.curve, time))
        } else {
            Vec3::ZERO
        };
        for &(axis, keys) in self.axes {
            progress[axis] = sample(keys, time);
        }
        // CHMotionTween.Update swaps X/Y progress when m_Inverted is set.
        if inverted {
            vec2(progress.y, progress.x)
        } else {
            vec2(progress.x, progress.y)
        }
    }
    pub fn position(&self, elapsed: f32, from: Vec2, to: Vec2, scale: f32) -> Vec2 {
        let start = from + vec2(self.start_offset[0], -self.start_offset[1]) * scale;
        let end = to + vec2(self.end_offset[0], -self.end_offset[1]) * scale;
        // Native SpawnProjectile tests the un-offset transform positions.
        start + (end - start) * self.progress(elapsed, from.x > to.x)
    }
}

pub fn definition(id: &str) -> Option<&'static ProjectileDefinition> {
    PROJECTILES.iter().find(|item| item.id == id)
}

#[derive(Default)]
pub struct ProjectileArt {
    textures: HashMap<&'static str, Texture2D>,
}
impl ProjectileArt {
    pub fn draw(
        &mut self,
        projectile: &ProjectileDefinition,
        elapsed: f32,
        from: Vec2,
        to: Vec2,
        scale: f32,
    ) {
        if elapsed < 0. || elapsed >= projectile.duration {
            return;
        }
        let position = projectile.position(elapsed, from, to, scale);
        for sprite in projectile.sprites {
            let texture = self.textures.entry(sprite.key).or_insert_with(|| {
                let texture =
                    Texture2D::from_file_with_format(sprite.image, Some(ImageFormat::Png));
                texture.set_filter(FilterMode::Linear);
                texture
            });
            let [r, g, b, a] = sprite.color;
            let vertices = sprite
                .vertices
                .iter()
                .map(|&[x, y, u, v]| {
                    Vertex::new(
                        position.x + x * scale,
                        position.y - y * scale,
                        0.,
                        u,
                        v,
                        Color::new(r, g, b, a),
                    )
                })
                .collect();
            draw_mesh(&Mesh {
                vertices,
                indices: vec![0, 1, 2, 0, 2, 3],
                texture: Some(texture.clone()),
            });
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_ninja_arrow_reaches_both_endpoints_in_quarter_second() {
        let arrow = definition("Projectile_NinjaPig_Arrow").unwrap();
        assert_eq!(arrow.duration, 0.25);
        let from = vec2(830., 168.);
        let to = vec2(230., 180.);
        assert_eq!(arrow.position(0., from, to, 1.), from);
        assert_eq!(arrow.position(0.125, from, to, 1.), vec2(530., 174.));
        assert_eq!(arrow.position(0.25, from, to, 1.), to);
        assert_eq!(arrow.sprites.len(), 1);
        assert_eq!(arrow.sprites[0].image[..8], *b"\x89PNG\r\n\x1a\n");
    }
    #[test]
    fn inverted_native_motion_swaps_authored_axis_progress() {
        let projectile = PROJECTILES
            .iter()
            .find(|p| {
                (p.progress(p.duration * 0.4, false).x - p.progress(p.duration * 0.4, false).y)
                    .abs()
                    > 0.01
            })
            .unwrap();
        let ordinary = projectile.progress(projectile.duration * 0.4, false);
        assert_eq!(
            projectile.progress(projectile.duration * 0.4, true),
            vec2(ordinary.y, ordinary.x)
        );
    }
    #[test]
    fn runtime_covers_all_bound_ids_and_keeps_missing_visuals_explicit() {
        assert_eq!(PROJECTILES.len(), 52);
        assert_eq!(
            PROJECTILES.iter().map(|p| p.sprites.len()).sum::<usize>(),
            47
        );
        assert!(!definition("Projectile_ZombiePig_Barf").unwrap().visible());
        for p in &PROJECTILES {
            assert!(p.duration > 0.);
            for &(_, keys) in p.axes {
                assert!(keys.windows(2).all(|w| w[0].time <= w[1].time));
            }
        }
    }
}
