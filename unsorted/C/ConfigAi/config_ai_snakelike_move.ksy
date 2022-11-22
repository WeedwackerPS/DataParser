types:
  config_ai_snakelike_move:
    seq:
      - id: bit_field
        type: u1
      - id: min_curvature
        type: f4
        if: has_field_min_curvature
      - id: max_curvatrue
        type: f4
        if: has_field_max_curvatrue
      - id: min_segment_distance
        type: f4
        if: has_field_min_segment_distance
      - id: segment_distance
        type: f4
        if: has_field_segment_distance
      - id: segment_count
        type: aux_types::vlq_base128_le_s
        if: has_field_segment_count
    instances:
      has_field_min_curvature: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_max_curvatrue: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_min_segment_distance: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_segment_distance: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_segment_count: # Field №4
        value: (bit_field & 0b10000) != 0
