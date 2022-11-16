meta:
  id: enum__antialiasing_method
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
    enum: antialiasing_method
enums:
  antialiasing_method:
    0: none
    3: smaa
    4: taa
