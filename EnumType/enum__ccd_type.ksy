meta:
  id: enum__ccd_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ccd_type:
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
