types:
  config_ai_spacial_chase_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: chase_start_distance
        type: f4
        if: has_field_chase_start_distance
      - id: chase_stop_distance
        type: f4
        if: has_field_chase_stop_distance
      - id: y_offset_min
        type: f4
        if: has_field_y_offset_min
      - id: y_offset_max
        type: f4
        if: has_field_y_offset_max
      - id: segment_distance
        type: f4
        if: has_field_segment_distance
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_chase_start_distance: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_chase_stop_distance: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_y_offset_min: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_y_offset_max: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_segment_distance: # Field №5
        value: (bit_field & 0b100000) != 0
