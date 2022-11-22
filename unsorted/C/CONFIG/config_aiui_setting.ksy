types:
  config_aiui_setting:
    seq:
      - id: bit_field
        type: u1
      - id: has_direction_indicator
        type: u1
        if: has_field_has_direction_indicator
    instances:
      has_field_has_direction_indicator: # Field №0
        value: (bit_field & 0b1) != 0
