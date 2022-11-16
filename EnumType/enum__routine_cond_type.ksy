meta:
  id: enum__routine_cond_type
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
    enum: routine_cond_type
enums:
  routine_cond_type:
    0: routine_cond_none
    1: routine_cond_quest_finish
