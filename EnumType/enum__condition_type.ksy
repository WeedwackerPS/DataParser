meta:
  id: enum__condition_type
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
    enum: condition_type
enums:
  condition_type:
    0: condition_none
    1: condition_quest
    2: condition_player_level
    3: condition_var_eq
    4: condition_var_ne
    5: condition_var_gt
    6: condition_var_lt
    7: condition_unlock_point
    8: condition_player_level_gt_eq
    9: condition_player_level_lt
    10: condition_specific_activity_open
    11: condition_activity_type_open
