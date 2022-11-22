types:
  device_action:
    seq:
      - id: bit_field
        type: u1
      - id: keyboard_touch
        type: aux_types::string
        if: has_field_keyboard_touch
      - id: keyboard_mouse
        type: aux_types::string
        if: has_field_keyboard_mouse
      - id: joypad
        type: aux_types::string
        if: has_field_joypad
    instances:
      has_field_keyboard_touch: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_keyboard_mouse: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_joypad: # Field №2
        value: (bit_field & 0b100) != 0
