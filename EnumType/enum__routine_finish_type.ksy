meta:
  id: enum__routine_finish_type
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
    enum: routine_finish_type
enums:
  routine_finish_type:
    0: routine_finish_none
    1: routine_finish_kill_monster
    2: routine_finish_gather
    3: routine_challenge_finish
