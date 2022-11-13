meta:
  id: enum__black_screen_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__black_screen_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: black_screen_type
enums:
  black_screen_type:
    0: to_keep_from_black
    1: to_black
    2: from_black
    3: blend_out
    4: keep_black
