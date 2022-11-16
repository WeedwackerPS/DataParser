meta:
  id: enum__world_area_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: world_area_type
enums:
  world_area_type:
    0: level_none
    1: level_1
    2: level_2
    3: level_3
    10: level_play
