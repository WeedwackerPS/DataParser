meta:
  id: enum__hunting_monster_create_pos_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: hunting_monster_create_pos_type
enums:
  hunting_monster_create_pos_type:
    0: hunting_pos_none
    1: hunting_pos_ground
    2: hunting_pos_shoal_water
    3: hunting_pos_snow_mountain
