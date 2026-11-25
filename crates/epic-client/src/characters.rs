//! Original SmoothMoves geometry with recovered idle clip transforms.
//! Clip blending, texture triggers and equipment-dependent pig variants remain separate.
use crate::animation::AnimationLibrary;
use macroquad::prelude::*;
use std::ops::Deref;

struct Quad {
    name: &'static str,
    material: Option<usize>,
    depth: i32,
    active: bool,
    visible: bool,
    node_path: &'static str,
    local_vertices: &'static [[f32; 2]],
    vertices: &'static [[f32; 8]],
}
struct Model {
    asset_id: &'static str,
    materials: &'static [Option<usize>],
    quads: &'static [Quad],
}
impl Model {
    fn layout(&self, origin: Vec2) -> (Vec2, f32) {
        let points: Vec<_> = self
            .quads
            .iter()
            .filter(|quad| quad.active && quad.visible && quad.material.is_some())
            .flat_map(|quad| quad.vertices.iter())
            .collect();
        let min_y = points
            .iter()
            .map(|vertex| vertex[1])
            .fold(f32::INFINITY, f32::min);
        let max_y = points
            .iter()
            .map(|vertex| vertex[1])
            .fold(f32::NEG_INFINITY, f32::max);
        let min_x = points
            .iter()
            .map(|vertex| vertex[0])
            .fold(f32::INFINITY, f32::min);
        let max_x = points
            .iter()
            .map(|vertex| vertex[0])
            .fold(f32::NEG_INFINITY, f32::max);
        let body: Vec<_> = self
            .quads
            .iter()
            .filter(|quad| quad.name.starts_with("Body"))
            .filter(|quad| quad.active && quad.visible && quad.material.is_some())
            .flat_map(|quad| quad.vertices.iter())
            .collect();
        let height = if body.is_empty() {
            max_y - min_y
        } else {
            body.iter()
                .map(|vertex| vertex[1])
                .fold(f32::NEG_INFINITY, f32::max)
                - body
                    .iter()
                    .map(|vertex| vertex[1])
                    .fold(f32::INFINITY, f32::min)
        };
        // Fit the existing battle slots while retaining the authored relative
        // geometry. Actors such as PigBomb have no bone named Body.
        let scale = (78. / height.max(1.))
            .min(120. / (max_y - min_y).max(1.))
            .min(160. / (max_x - min_x).max(1.));
        (vec2(origin.x, origin.y + 39. + min_y * scale), scale)
    }
}
#[derive(Clone, Copy)]
struct SpritePlacement {
    size: [f32; 2],
    pivot: [f32; 2],
}
struct Headgear {
    front: SpritePlacement,
    back: Option<(SpritePlacement, &'static [u8])>,
}
include!("characters_generated.rs");

pub fn asset_ids() -> impl Iterator<Item = &'static str> {
    CHARACTER_MODELS.iter().map(|model| model.asset_id)
}

pub enum Actor {
    Bird { bird: usize, hat: usize },
    Pig { asset: &'static str },
}
impl Actor {
    pub fn bird(&self) -> Option<usize> {
        match *self {
            Self::Bird { bird, .. } => Some(bird),
            _ => None,
        }
    }
    pub fn hat(&self) -> usize {
        match *self {
            Self::Bird { hat, .. } => hat,
            _ => 0,
        }
    }
}

pub struct CharacterArt {
    hats: Vec<Texture2D>,
    textures: Vec<Option<Texture2D>>,
    backs: Vec<Option<Texture2D>>,
    animations: AnimationLibrary,
    animation_time: Option<f32>,
    capture_clip: Option<&'static str>,
}
impl Deref for CharacterArt {
    type Target = [Texture2D];
    fn deref(&self) -> &Self::Target {
        &self.hats
    }
}

fn texture(bytes: &[u8]) -> Texture2D {
    let texture = Texture2D::from_file_with_format(bytes, Some(ImageFormat::Png));
    texture.set_filter(FilterMode::Linear);
    texture
}

impl CharacterArt {
    pub fn new(hats: &[&[u8]]) -> Self {
        Self {
            hats: hats.iter().map(|bytes| texture(bytes)).collect(),
            textures: vec![None; CHARACTER_TEXTURES.len()],
            backs: vec![None; hats.len()],
            animations: AnimationLibrary::embedded(),
            animation_time: None,
            capture_clip: None,
        }
    }

    #[cfg(not(target_arch = "wasm32"))]
    pub fn set_animation_time(&mut self, seconds: Option<f32>) {
        self.animation_time = seconds;
    }
    #[cfg(not(target_arch = "wasm32"))]
    pub fn set_capture_clip(&mut self, clip: Option<&'static str>) {
        self.capture_clip = clip;
    }

    pub fn draw(&mut self, actor: &Actor, origin: Vec2, alive: bool) -> bool {
        self.draw_clip(actor, origin, alive, None)
    }

    pub fn animations(&self) -> &AnimationLibrary {
        &self.animations
    }

    pub fn attachment(
        &self,
        asset: &str,
        origin: Vec2,
        path: &str,
        playback: Option<(&str, f32)>,
    ) -> Option<(Vec2, f32)> {
        let model = CHARACTER_MODELS
            .iter()
            .find(|model| model.asset_id == asset)?;
        let (base, scale) = model.layout(origin);
        let animation = self.animations.actor(asset)?;
        let node = animation.node_index(path)?;
        let (clip, seconds) = playback.unwrap_or((animation.default_name(), 0.));
        let pose = animation.pose(clip, seconds);
        let point = pose[node].transform_point3(Vec3::ZERO);
        Some((
            vec2(base.x + point.x * scale, base.y - point.y * scale),
            scale,
        ))
    }

    pub fn draw_clip(
        &mut self,
        actor: &Actor,
        origin: Vec2,
        alive: bool,
        playback: Option<(&str, f32)>,
    ) -> bool {
        let asset = match *actor {
            Actor::Bird { bird, .. } => [
                "RedBird",
                "YellowBird",
                "WhiteBird",
                "BlackBird",
                "BlueBirds",
            ][bird],
            Actor::Pig { asset } => asset,
        };
        let Some(model) = CHARACTER_MODELS
            .iter()
            .find(|model| model.asset_id == asset)
        else {
            return false;
        };
        let (base, scale) = model.layout(origin);
        let animation = self.animations.actor(asset).expect("Recovered actor rig");
        let seconds = if let Some((_, seconds)) = playback {
            seconds
        } else if alive {
            self.animation_time.unwrap_or_else(|| get_time() as f32)
        } else {
            0.
        };
        let clip = playback
            .map(|(name, _)| name)
            .or(self.capture_clip)
            .filter(|name| animation.has_clip(name))
            .unwrap_or_else(|| animation.default_name());
        let pose = if clip == animation.default_name() {
            animation.default_pose(seconds)
        } else {
            animation.pose(clip, seconds)
        };
        let frames = animation.sprite_frames(clip, seconds);
        let tint = if alive {
            WHITE
        } else {
            Color::new(0.48, 0.48, 0.48, 0.7)
        };
        let mut quads: Vec<_> = model
            .quads
            .iter()
            .map(|quad| {
                let node = animation
                    .node_index(quad.node_path)
                    .expect("Bound sprite transform");
                (quad, node, frames.get(&node))
            })
            .collect();
        quads.sort_by_key(|(quad, _, state)| {
            std::cmp::Reverse(state.and_then(|state| state.depth).unwrap_or(quad.depth))
        });
        for (quad, node, state) in quads {
            if !quad.active
                || !state
                    .and_then(|state| state.visible)
                    .unwrap_or(quad.visible)
            {
                continue;
            }
            let material = state
                .and_then(|state| state.material)
                .unwrap_or(quad.material);
            let Some(texture_index) = material
                .and_then(|index| model.materials.get(index))
                .copied()
                .flatten()
            else {
                // Null authored material slots (for example the bird inside a
                // cage) require the original runtime injection, still pending.
                continue;
            };
            let matrix = pose[node];
            let replacement = if let Actor::Bird { hat, .. } = *actor {
                if quad.name == "Headgear" {
                    Some((HEADGEAR_PLACEMENTS[hat].front, self.hats[hat].clone()))
                } else if quad.name == "Headgear_Back" {
                    let Some((placement, bytes)) = HEADGEAR_PLACEMENTS[hat].back else {
                        continue;
                    };
                    let back = self.backs[hat].get_or_insert_with(|| texture(bytes));
                    Some((placement, back.clone()))
                } else {
                    None
                }
            } else {
                None
            };
            let (vertices, art) = if let Some((sprite, art)) = replacement {
                let [width, height] = sprite.size;
                let [px, py] = sprite.pivot;
                let corners = [(0., 1.), (0., 0.), (1., 0.), (1., 1.)];
                let vertices = [0usize, 3, 1, 3, 2, 1]
                    .iter()
                    .map(|&index| {
                        let (u, v) = corners[index];
                        let lx = (u - px) * width;
                        let ly = (v - py) * height;
                        let point = matrix.transform_point3(vec3(lx, ly, 0.));
                        Vertex::new(
                            base.x + point.x * scale,
                            base.y - point.y * scale,
                            0.,
                            u,
                            1. - v,
                            tint,
                        )
                    })
                    .collect();
                (vertices, art)
            } else {
                let art = self.textures[texture_index]
                    .get_or_insert_with(|| texture(CHARACTER_TEXTURES[texture_index]))
                    .clone();
                let vertices = quad
                    .vertices
                    .iter()
                    .zip(quad.local_vertices)
                    .enumerate()
                    .map(
                        |(index, (&[_, _, mut u, mut v, r, g, b, a], &[mut x, mut y]))| {
                            let corner = [0usize, 3, 1, 3, 2, 1][index];
                            if let Some(corners) = state.and_then(|state| state.corners) {
                                [x, y] = corners[corner];
                            }
                            if let Some([left, bottom, width, height]) =
                                state.and_then(|state| state.uv)
                            {
                                let (su, sv) = [(0., 1.), (0., 0.), (1., 0.), (1., 1.)][corner];
                                u = left + su * width;
                                v = 1. - bottom - sv * height;
                            }
                            let point = matrix.transform_point3(vec3(x, y, 0.));
                            Vertex::new(
                                base.x + point.x * scale,
                                base.y - point.y * scale,
                                0.,
                                u,
                                v,
                                Color::new(r * tint.r, g * tint.g, b * tint.b, a * tint.a),
                            )
                        },
                    )
                    .collect();
                (vertices, art)
            };
            let vertices: Vec<Vertex> = vertices;
            let indices = (0..vertices.len() as u16).collect();
            draw_mesh(&Mesh {
                vertices,
                indices,
                texture: Some(art),
            });
        }
        true
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn every_original_actor_has_a_finite_visible_layout_even_without_body_bones() {
        assert_eq!(CHARACTER_MODELS.len(), 22);
        for model in &CHARACTER_MODELS {
            let (base, scale) = model.layout(vec2(200., 180.));
            assert!(scale.is_finite() && scale > 0., "{}", model.asset_id);
            assert!(base.is_finite(), "{}", model.asset_id);
            assert!(
                model.quads.iter().any(|quad| quad
                    .vertices
                    .windows(2)
                    .any(|points| points[0][..2] != points[1][..2])),
                "{}",
                model.asset_id
            );
        }
    }

    #[test]
    fn animation_rig_rest_transforms_reproduce_all_original_prefab_triangles() {
        let library = AnimationLibrary::embedded();
        for model in &CHARACTER_MODELS {
            let actor = library.actor(model.asset_id).unwrap();
            let matrices = actor.pose("__rest_pose__", 0.);
            for quad in model.quads {
                let matrix = matrices[actor.node_index(quad.node_path).unwrap()];
                assert_eq!(quad.vertices.len(), quad.local_vertices.len());
                for (world, local) in quad.vertices.iter().zip(quad.local_vertices) {
                    let calculated = matrix.transform_point3(vec3(local[0], local[1], 0.));
                    assert!(
                        (calculated.x - world[0]).abs() < 0.02
                            && (calculated.y - world[1]).abs() < 0.02,
                        "{} / {}: {calculated:?} vs {world:?}",
                        model.asset_id,
                        quad.name
                    );
                }
            }
        }
    }
}
