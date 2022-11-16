meta:
  id: enum__extra_ability_state
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
    enum: extra_ability_state
enums:
  extra_ability_state:
    0: start
    1: success
    2: interrupt
