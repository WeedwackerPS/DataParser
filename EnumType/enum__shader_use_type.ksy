meta:
  id: enum__shader_use_type
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
    enum: shader_use_type
enums:
  shader_use_type:
    0: none
    1: character
    2: gadget
