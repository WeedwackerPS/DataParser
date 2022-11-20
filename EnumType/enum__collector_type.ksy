meta:
  id: enum__collector_type
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
    enum: collector_type
enums:
  collector_type:
    1: wind_seed
