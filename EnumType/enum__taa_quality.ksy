meta:
  id: enum__taa_quality
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
    enum: taa_quality
enums:
  taa_quality:
    0: taa_low
    1: taa_high
