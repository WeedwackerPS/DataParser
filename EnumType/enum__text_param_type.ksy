meta:
  id: enum__text_param_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__text_param_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: text_param_type
enums:
  text_param_type:
    0: text_param_none
    1: text_param_avatar_name
    2: text_param_routine_type
