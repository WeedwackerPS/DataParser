meta:
  id: enum__item_limit_const_value_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__item_limit_const_value_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: item_limit_const_value_type
enums:
  item_limit_const_value_type:
    1: limit_const_value_day_bonus_count
    2: limit_const_value_bonus_output_switch_one
    3: limit_const_value_bonus_output_switch_two
