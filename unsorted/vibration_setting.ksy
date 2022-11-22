types:
  vibration_setting:
    seq:
      - id: bit_field
        type: u1
      - id: rtpc
        type: config_wwise_string
        if: has_field_rtpc
      - id: open_value
        type: f4
        if: has_field_open_value
      - id: close_value
        type: f4
        if: has_field_close_value
    instances:
      has_field_rtpc: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_open_value: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_close_value: # Field №2
        value: (bit_field & 0b100) != 0
