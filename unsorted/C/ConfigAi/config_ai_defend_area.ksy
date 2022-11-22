types:
  config_ai_defend_area:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: defend_range
        type: f4
        if: has_field_defend_range
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_defend_range: # Field №1
        value: (bit_field & 0b10) != 0
