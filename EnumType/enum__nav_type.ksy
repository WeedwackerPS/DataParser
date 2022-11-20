meta:
  id: enum__nav_type
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
    enum: nav_type
enums:
  nav_type:
    0: none
    1: obstacle
