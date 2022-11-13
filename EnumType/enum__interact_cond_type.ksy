meta:
  id: enum__interact_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__interact_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: interact_cond_type
enums:
  interact_cond_type:
    0: interact_cond_none
    1: interact_cond_widget_on
    2: interact_cond_has_item
