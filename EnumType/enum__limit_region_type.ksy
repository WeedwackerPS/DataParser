meta:
  id: enum__limit_region_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: limit_region_type
enums:
  limit_region_type:
    0: limit_region_type_none
    1: limit_region_type_bigworld
    2: limit_region_type_activity
    3: limit_region_type_homeworld
