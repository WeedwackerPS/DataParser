meta:
  id: enum__billboard_offset_type
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
    enum: billboard_offset_type
enums:
  billboard_offset_type:
    0: normal
    1: character
