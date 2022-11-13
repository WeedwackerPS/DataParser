meta:
  id: enum__collector_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__collector_type:
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
