meta:
  id: enum__kill_self_type
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
    enum: kill_self_type
enums:
  kill_self_type:
    0: none
    1: normal
    2: disappear
