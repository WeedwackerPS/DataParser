meta:
  id: enum__point_location
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__point_location:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: point_location
enums:
  point_location:
    0: point_ground
    1: point_air
