meta:
  id: enum__shadow_quality
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
    enum: shadow_quality
enums:
  shadow_quality:
    0: very_low
    1: low
    2: medium
    3: high
    4: very_high
