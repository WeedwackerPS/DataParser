meta:
  id: enum__activity_banner_ui_element_type
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
    enum: activity_banner_ui_element_type
enums:
  activity_banner_ui_element_type:
    0: none
    1: unlock_tips
    2: finish_tips
    3: reward_scroller
    4: button_goto
    5: button_check
    6: animator
