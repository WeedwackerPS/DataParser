meta:
  id: enum__input_device_type
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
    enum: input_device_type
enums:
  input_device_type:
    0: touch_screen
    1: keyboard_with_touch_screen
    2: keyboard_with_mouse
    3: joypad
