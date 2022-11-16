meta:
  id: enum__q_state
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
    enum: q_state
enums:
  q_state:
    -1: invalid
    0: accepted
    1: updated
    2: finished
    3: failed
