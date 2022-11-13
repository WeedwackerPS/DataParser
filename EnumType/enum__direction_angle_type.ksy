meta:
  id: enum__direction_angle_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__direction_angle_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: direction_angle_type
enums:
  direction_angle_type:
    0: free
    1: horizontal
    2: vertical
