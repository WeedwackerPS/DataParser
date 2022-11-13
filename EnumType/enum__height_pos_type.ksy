meta:
  id: enum__height_pos_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__height_pos_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: height_pos_type
enums:
  height_pos_type:
    0: bottom
    1: center
