types:
  config_ai_spacial_facing_move_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: range_radius_min
        type: f4
        if: has_field_range_radius_min
      - id: range_radius_max
        type: f4
        if: has_field_range_radius_max
      - id: rest_time_min
        type: f4
        if: has_field_rest_time_min
      - id: rest_time_max
        type: f4
        if: has_field_rest_time_max
      - id: facing_move_turn_interval
        type: f4
        if: has_field_facing_move_turn_interval
      - id: facing_move_min_avoidance_velecity
        type: f4
        if: has_field_facing_move_min_avoidance_velecity
      - id: obstacle_detect_range
        type: f4
        if: has_field_obstacle_detect_range
      - id: obstacle_up_range
        type: f4
        if: has_field_obstacle_up_range
      - id: obstacle_max_angle
        type: f4
        if: has_field_obstacle_max_angle
      - id: spacial_facing_move_probability
        type: config_ai_spacial_facing_move_probability
        if: has_field_spacial_facing_move_probability
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 0001) != 0
      has_field_range_radius_min: # Field №1
        value: (bit_field.value & 0010) != 0
      has_field_range_radius_max: # Field №2
        value: (bit_field.value & 0100) != 0
      has_field_rest_time_min: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_rest_time_max: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_facing_move_turn_interval: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_facing_move_min_avoidance_velecity: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_obstacle_detect_range: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_obstacle_up_range: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_obstacle_max_angle: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_spacial_facing_move_probability: # Field №10
        value: (bit_field.value & 0b10000000000) != 0
