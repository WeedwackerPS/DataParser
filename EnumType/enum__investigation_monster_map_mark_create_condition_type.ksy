meta:
  id: enum__investigation_monster_map_mark_create_condition_type
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
    enum: investigation_monster_map_mark_create_condition_type
enums:
  investigation_monster_map_mark_create_condition_type:
    0: invalid
    1: player_level_ge
