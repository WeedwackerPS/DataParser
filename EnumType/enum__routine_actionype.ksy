meta:
  id: enum__routine_actionype
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
    enum: routine_actionype
enums:
  routine_actionype:
    0: routine_action_none
