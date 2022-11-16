meta:
  id: enum__fetter_cond_type
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
    enum: fetter_cond_type
enums:
  fetter_cond_type:
    0: fetter_cond_none
    1: fetter_cond_fetter_level
    2: fetter_cond_avatar_level
    3: fetter_cond_finish_dungeon
    4: fetter_cond_unlock_trans_point
    5: fetter_cond_unlock_area
    6: fetter_cond_finish_quest
    7: fetter_cond_avatar_promote_level
    8: fetter_cond_player_birthday
    9: fetter_cond_avatar_birthday
    10: fetter_cond_not_open
    11: fetter_cond_finish_parent_quest
    12: fetter_cond_unlock_arena_by_city_id
