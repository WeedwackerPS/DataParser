types:
  config_ai_extraction_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: extraction_distance
        type: f4
        if: has_field_extraction_distance
      - id: extraction_angle_max
        type: f4
        if: has_field_extraction_angle_max
      - id: extraction_angle_min
        type: f4
        if: has_field_extraction_angle_min
      - id: trigger_distance
        type: f4
        if: has_field_trigger_distance
      - id: kill_self_time
        type: f4
        if: has_field_kill_self_time
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_extraction_distance: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_extraction_angle_max: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_extraction_angle_min: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_trigger_distance: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_kill_self_time: # Field №5
        value: (bit_field & 0b100000) != 0
