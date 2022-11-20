meta:
  id: enum__option_type
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
    enum: option_type
enums:
  option_type:
    0: default
    1: very_low
    2: low
    3: medium
    4: high
    5: very_high
