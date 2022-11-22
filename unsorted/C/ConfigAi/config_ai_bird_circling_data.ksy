types:
  config_ai_bird_circling_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: radius
        type: f4
        if: has_field_radius
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_radius: # Field №1
        value: (bit_field & 0b10) != 0
