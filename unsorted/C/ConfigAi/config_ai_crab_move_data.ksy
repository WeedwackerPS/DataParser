types:
  config_ai_crab_move_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: radius_min
        type: f4
        if: has_field_radius_min
      - id: radius_max
        type: f4
        if: has_field_radius_max
      - id: move_time_min
        type: f4
        if: has_field_move_time_min
      - id: move_time_max
        type: f4
        if: has_field_move_time_max
      - id: rest_time_min
        type: f4
        if: has_field_rest_time_min
      - id: rest_time_max
        type: f4
        if: has_field_rest_time_max
      - id: detect_front_distance
        type: f4
        if: has_field_detect_front_distance
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_radius_min: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_radius_max: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_move_time_min: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_move_time_max: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_rest_time_min: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_rest_time_max: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_detect_front_distance: # Field №8
        value: (bit_field.value & 0b100000000) != 0
