meta:
  id: enum__action_event_type
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
    enum: action_event_type
enums:
  action_event_type:
    0: any
    1: button_pressed
    2: button_released
    3: button_pressing
    4: button_unpressing
    5: button_long_pressed
    6: button_long_pressing
    7: button_long_released
    8: button_short_press_up
    9: button_repeating
    10: axis_active
    11: negative_button_repeating
