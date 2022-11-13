meta:
  id: enum__exclusive_platform_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__exclusive_platform_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: exclusive_platform_type
enums:
  exclusive_platform_type:
    0: exclusive_none
    1: exclusive_psn
