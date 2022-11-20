meta:
  id: enum__config_shadow_resolution
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
    enum: config_shadow_resolution
enums:
  config_shadow_resolution:
    0: low
    1: medium
    2: high
    3: very_high
