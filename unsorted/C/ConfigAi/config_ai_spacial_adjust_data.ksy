types:
  config_ai_spacial_adjust_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: y_low
        type: f4
        if: has_field_y_low
      - id: y_high
        type: f4
        if: has_field_y_high
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_y_low: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_y_high: # Field №2
        value: (bit_field & 0b100) != 0
