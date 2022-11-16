meta:
  id: enum__sectr_platform_type
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
    enum: sectr_platform_type
enums:
  sectr_platform_type:
    0: base
    1: pc
    2: mobile
    3: ps4base
