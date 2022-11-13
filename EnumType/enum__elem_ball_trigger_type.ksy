meta:
  id: enum__elem_ball_trigger_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__elem_ball_trigger_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: elem_ball_trigger_type
enums:
  elem_ball_trigger_type:
    0: none
    1: in_rain
    2: after_rain
    3: in_snow
    4: in_storm
