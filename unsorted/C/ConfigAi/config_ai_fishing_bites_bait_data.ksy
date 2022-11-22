types:
  config_ai_fishing_bites_bait_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b10) != 0
