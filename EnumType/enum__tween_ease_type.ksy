meta:
  id: enum__tween_ease_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: tween_ease_type
enums:
  tween_ease_type:
    0: ease_in_quad
    1: ease_out_quad
    2: ease_in_out_quad
    3: ease_in_cubic
    4: ease_out_cubic
    5: ease_in_out_cubic
    6: ease_in_quart
    7: ease_out_quart
    8: ease_in_out_quart
    9: ease_in_quint
    10: ease_out_quint
    11: ease_in_out_quint
    12: ease_in_sine
    13: ease_out_sine
    14: ease_in_out_sine
    15: ease_in_expo
    16: ease_out_expo
    17: ease_in_out_expo
    18: ease_in_circ
    19: ease_out_circ
    20: ease_in_out_circ
    21: linear
    22: spring
    23: ease_in_bounce
    24: ease_out_bounce
    25: ease_in_out_bounce
    26: ease_in_back
    27: ease_out_back
    28: ease_in_out_back
    29: ease_in_elastic
    30: ease_out_elastic
    31: ease_in_out_elastic
