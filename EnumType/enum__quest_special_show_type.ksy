meta:
  id: enum__quest_special_show_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__quest_special_show_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: quest_special_show_type
enums:
  quest_special_show_type:
    0: special_show_none
    1: special_show_finish
    2: special_show_global_value_equal_to
