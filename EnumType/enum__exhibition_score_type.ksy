meta:
  id: enum__exhibition_score_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: exhibition_score_type
enums:
  exhibition_score_type:
    0: exhibition_score_none
    1: exhibition_score_value
    2: exhibition_score_display_param_factor
