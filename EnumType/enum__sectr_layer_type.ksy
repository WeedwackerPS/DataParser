meta:
  id: enum__sectr_layer_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: sectr_layer_type
enums:
  sectr_layer_type:
    0: persistence
    1: terrain
    2: static_model
    3: stone_model
    4: dynamic_model
    5: navmesh
    6: collider
    7: very_high_model
    8: terrain_grass
    9: tree_model
    10: water_tile
    11: fog_texture
    12: small_light
    13: far_light
    14: dynamic_small_light
    15: dynamic_far_light
    16: reflection_prob
