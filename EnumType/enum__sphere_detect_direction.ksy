meta:
  id: enum__sphere_detect_direction
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__sphere_detect_direction:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: sphere_detect_direction
enums:
  sphere_detect_direction:
    0: none
    1: center_to_side
