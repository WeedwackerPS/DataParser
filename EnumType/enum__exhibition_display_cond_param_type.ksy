meta:
  id: enum__exhibition_display_cond_param_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: exhibition_display_cond_param_type
enums:
  exhibition_display_cond_param_type:
    0: exhibition_display_cond_param_none
    1: exhibition_display_cond_param_replaceable_value
    2: exhibition_display_cond_param_accumulable_value
    3: exhibition_display_cond_param_unsigned_integer
    4: exhibition_display_cond_param_display_value
