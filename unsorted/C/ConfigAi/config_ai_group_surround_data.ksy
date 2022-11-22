types:
  config_ai_group_surround_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: start_distance
        type: f4
        if: has_field_start_distance
      - id: surround_radius
        type: f4
        if: has_field_surround_radius
      - id: turning_states
        type: array_of__aux_types__string__length_u
        if: has_field_turning_states
      - id: detect_front_distance
        type: f4
        if: has_field_detect_front_distance
      - id: detect_front_offset_up
        type: f4
        if: has_field_detect_front_offset_up
      - id: cd
        type: f4
        if: has_field_cd
      - id: exit_distance_max
        type: f4
        if: has_field_exit_distance_max
      - id: exit_distance_min
        type: f4
        if: has_field_exit_distance_min
      - id: clock_wise_weight
        type: f4
        if: has_field_clock_wise_weight
      - id: detect_collision_radius
        type: f4
        if: has_field_detect_collision_radius
      - id: detect_collision_distance
        type: f4
        if: has_field_detect_collision_distance
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field.value & 000010) != 0
      has_field_start_distance: # Field №2
        value: (bit_field.value & 000100) != 0
      has_field_surround_radius: # Field №3
        value: (bit_field.value & 001000) != 0
      has_field_turning_states: # Field №4
        value: (bit_field.value & 010000) != 0
      has_field_detect_front_distance: # Field №5
        value: (bit_field.value & 0b0000000100000) != 0
      has_field_detect_front_offset_up: # Field №6
        value: (bit_field.value & 0b0000001000000) != 0
      has_field_cd: # Field №7
        value: (bit_field.value & 0b0000010000000) != 0
      has_field_exit_distance_max: # Field №8
        value: (bit_field.value & 0b0000100000000) != 0
      has_field_exit_distance_min: # Field №9
        value: (bit_field.value & 0b0001000000000) != 0
      has_field_clock_wise_weight: # Field №10
        value: (bit_field.value & 0b0010000000000) != 0
      has_field_detect_collision_radius: # Field №11
        value: (bit_field.value & 0b0100000000000) != 0
      has_field_detect_collision_distance: # Field №12
        value: (bit_field.value & 0b1000000000000) != 0
