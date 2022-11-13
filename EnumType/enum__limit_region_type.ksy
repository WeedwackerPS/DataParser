meta:
  id: enum__limit_region_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__limit_region_type:
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
