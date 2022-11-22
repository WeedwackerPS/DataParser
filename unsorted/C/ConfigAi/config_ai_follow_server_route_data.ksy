types:
  config_ai_follow_server_route_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override_walk
        type: f4
        if: has_field_turn_speed_override_walk
      - id: turn_speed_override_run
        type: f4
        if: has_field_turn_speed_override_run
      - id: check_range
        type: f4
        if: has_field_check_range
      - id: special
        type: u1
        if: has_field_special
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_turn_speed_override_walk: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_turn_speed_override_run: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_check_range: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_special: # Field №4
        value: (bit_field & 0b10000) != 0
