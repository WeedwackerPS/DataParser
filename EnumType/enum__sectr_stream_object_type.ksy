meta:
  id: enum__sectr_stream_object_type
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
    enum: sectr_stream_object_type
enums:
  sectr_stream_object_type:
    0: none
    1: terrain
    2: lod
    3: vo
    4: other
    5: terrain_grass
    6: water_tile
    7: navmesh
    8: occlusion
    9: particle
    10: fog_texture
    11: hlod
    12: limit_region
    13: vo_collider
    14: lod_collider
    15: reflection_prob_tile
