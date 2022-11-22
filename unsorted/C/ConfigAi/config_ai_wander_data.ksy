types:
  config_ai_wander_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: cd_max
        type: f4
        if: has_field_cd_max
      - id: cd_min
        type: f4
        if: has_field_cd_min
      - id: distance_from_born
        type: f4
        if: has_field_distance_from_born
      - id: distance_from_current_min
        type: f4
        if: has_field_distance_from_current_min
      - id: distance_from_current_max
        type: f4
        if: has_field_distance_from_current_max
      - id: move_type
        type: enum__ai_basic_move_type
        if: has_field_move_type
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_cd_max: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_cd_min: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_distance_from_born: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_distance_from_current_min: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_distance_from_current_max: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_move_type: # Field №7
        value: (bit_field & 0b10000000) != 0
