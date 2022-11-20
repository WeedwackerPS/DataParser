meta:
  id: enum__narrator_state
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
    enum: narrator_state
enums:
  narrator_state:
    0: ing
    1: pausing
