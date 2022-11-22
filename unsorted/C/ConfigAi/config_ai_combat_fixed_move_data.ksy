types:
  config_ai_combat_fixed_move_data:
    seq:
      - id: bit_field
        type: u1
      - id: point_type
        type: enum__action_point_type
        if: has_field_point_type
      - id: cd_action_point
        type: f4
        if: has_field_cd_action_point
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: detect_distance
        type: f4
        if: has_field_detect_distance
      - id: overtime
        type: f4
        if: has_field_overtime
      - id: skill_id
        type: aux_types::vlq_base128_le_u
        if: has_field_skill_id
    instances:
      has_field_point_type: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_cd_action_point: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_speed_level: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_turn_speed_override: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_detect_distance: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_overtime: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_skill_id: # Field №6
        value: (bit_field & 0b1000000) != 0
