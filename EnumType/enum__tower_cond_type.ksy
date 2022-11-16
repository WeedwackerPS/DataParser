meta:
  id: enum__tower_cond_type
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
    enum: tower_cond_type
enums:
  tower_cond_type:
    0: tower_cond_none
    1: tower_cond_finish_time_less_than
    2: tower_cond_left_hp_greater_than
    3: tower_cond_challenge_left_time_more_than
