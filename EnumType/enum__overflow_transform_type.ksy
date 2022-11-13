meta:
  id: enum__overflow_transform_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__overflow_transform_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: overflow_transform_type
enums:
  overflow_transform_type:
    0: overflow_transform_none
    1: overflow_transform_player_exp
