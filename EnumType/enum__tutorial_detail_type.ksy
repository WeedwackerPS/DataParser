meta:
  id: enum__tutorial_detail_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__tutorial_detail_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: tutorial_detail_type
enums:
  tutorial_detail_type:
    0: tut_default
    1: tut_full_screen
