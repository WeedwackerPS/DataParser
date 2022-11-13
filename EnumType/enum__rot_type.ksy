meta:
  id: enum__rot_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__rot_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: rot_type
enums:
  rot_type:
    0: rot_none
    1: rot_angle
    2: rot_round
