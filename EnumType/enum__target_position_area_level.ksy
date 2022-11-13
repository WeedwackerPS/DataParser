meta:
  id: enum__target_position_area_level
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__target_position_area_level:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: target_position_area_level
enums:
  target_position_area_level:
    0: city
    1: first_area
    2: second_area
