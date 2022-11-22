types:
  config_ai_facing_move_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: range_min
        type: f4
        if: has_field_range_min
      - id: range_max
        type: f4
        if: has_field_range_max
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
      - id: facing_move_weight
        type: config_ai_facing_move_weight
        if: has_field_facing_move_weight
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_range_min: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_range_max: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_rest_time_min: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_rest_time_max: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_facing_move_turn_interval: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_facing_move_min_avoidance_velecity: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_obstacle_detect_range: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_facing_move_weight: # Field №8
        value: (bit_field.value & 0b100000000) != 0
