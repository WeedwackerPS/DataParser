meta:
  id: enum__checkboard_type
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
    enum: checkboard_type
enums:
  checkboard_type:
    0: none
    1: msaa2x
    2: line_half
