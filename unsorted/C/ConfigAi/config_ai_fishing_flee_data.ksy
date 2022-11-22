types:
  config_ai_fishing_flee_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: flee_angle
        type: f4
        if: has_field_flee_angle
      - id: flee_duration
        type: f4
        if: has_field_flee_duration
      - id: flee_distance_min
        type: f4
        if: has_field_flee_distance_min
      - id: flee_distance_max
        type: f4
        if: has_field_flee_distance_max
      - id: turn_to_target
        type: u1
        if: has_field_turn_to_target
      - id: restricted_by_defend_area
        type: u1
        if: has_field_restricted_by_defend_area
      - id: expand_flee_angle_when_blocked
        type: u1
        if: has_field_expand_flee_angle_when_blocked
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_flee_angle: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_flee_duration: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_flee_distance_min: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_flee_distance_max: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_turn_to_target: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_restricted_by_defend_area: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_expand_flee_angle_when_blocked: # Field №8
        value: (bit_field.value & 0b100000000) != 0
