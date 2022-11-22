types:
  config_ai_surround_data:
    seq:
      - id: bit_field
        type: u1
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
      - id: detect_front_offset_forward
        type: f4
        if: has_field_detect_front_offset_forward
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_start_distance: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_surround_radius: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_turning_states: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_detect_front_distance: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_detect_front_offset_up: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_detect_front_offset_forward: # Field №7
        value: (bit_field & 0b10000000) != 0
