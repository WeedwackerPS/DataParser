meta:
  id: enum__mark_custom_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mark_custom_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: mark_custom_type
enums:
  mark_custom_type:
    0: red_circle
    1: blue_circle
    2: other
