meta:
  id: enum__smaa_quality
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
    enum: smaa_quality
enums:
  smaa_quality:
    0: low
    1: medium
    2: high
    3: ultra
