meta:
  id: enum__compare_property
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__compare_property:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: compare_property
enums:
  compare_property:
    0: hp_ratio
