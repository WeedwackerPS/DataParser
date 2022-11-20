meta:
  id: enum__sign_in_cond_type
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
    enum: sign_in_cond_type
enums:
  sign_in_cond_type:
    0: sign_in_cond_none
    1: sign_in_cond_player_level
    2: sign_in_cond_finish_quest
    3: sign_in_cond_finish_parent_quest
    4: sign_in_cond_average_avatar_level
    5: sign_in_cond_max_avatar_level
    6: sign_in_cond_avatar_num
