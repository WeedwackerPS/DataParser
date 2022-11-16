meta:
  id: enum__exhibition_display_cond_type
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
    enum: exhibition_display_cond_type
enums:
  exhibition_display_cond_type:
    0: exhibition_display_cond_none
    1: exhibition_display_cond_a_ge_b
    2: exhibition_display_cond_and
    3: exhibition_display_cond_or
