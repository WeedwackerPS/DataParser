types:
  config_ai_flee_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: cd
        type: f4
        if: has_field_cd
      - id: trigger_distance
        type: f4
        if: has_field_trigger_distance
      - id: flee_angle
        type: f4
        if: has_field_flee_angle
      - id: flee_number_min
        type: aux_types::vlq_base128_le_s
        if: has_field_flee_number_min
      - id: flee_number_max
        type: aux_types::vlq_base128_le_s
        if: has_field_flee_number_max
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
      - id: kill_self_time
        type: f4
        if: has_field_kill_self_time
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field.value & 000010) != 0
      has_field_cd: # Field №2
        value: (bit_field.value & 000100) != 0
      has_field_trigger_distance: # Field №3
        value: (bit_field.value & 001000) != 0
      has_field_flee_angle: # Field №4
        value: (bit_field.value & 010000) != 0
      has_field_flee_number_min: # Field №5
        value: (bit_field.value & 0b0000000100000) != 0
      has_field_flee_number_max: # Field №6
        value: (bit_field.value & 0b0000001000000) != 0
      has_field_flee_distance_min: # Field №7
        value: (bit_field.value & 0b0000010000000) != 0
      has_field_flee_distance_max: # Field №8
        value: (bit_field.value & 0b0000100000000) != 0
      has_field_turn_to_target: # Field №9
        value: (bit_field.value & 0b0001000000000) != 0
      has_field_restricted_by_defend_area: # Field №10
        value: (bit_field.value & 0b0010000000000) != 0
      has_field_expand_flee_angle_when_blocked: # Field №11
        value: (bit_field.value & 0b0100000000000) != 0
      has_field_kill_self_time: # Field №12
        value: (bit_field.value & 0b1000000000000) != 0
