meta:
  id: enum__billboard_type
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
    enum: billboard_type
enums:
  billboard_type:
    0: none
    1: sneak
    2: icon
