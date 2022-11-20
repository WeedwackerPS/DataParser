meta:
  id: enum__ccd_type
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
    enum: ccd_type
enums:
  ccd_type:
    0: only_high_speed
    1: always
    2: never
