types:
  config_ai_fishing_pretend_bites_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: min_pretend_distance
        type: f4
        if: has_field_min_pretend_distance
      - id: max_pretend_distance
        type: f4
        if: has_field_max_pretend_distance
      - id: cd
        type: f4
        if: has_field_cd
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_min_pretend_distance: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_max_pretend_distance: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_cd: # Field №4
        value: (bit_field & 0b10000) != 0
