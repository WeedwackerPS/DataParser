types:
  config_ai_patrol_follow_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: inner_distance
        type: f4
        if: has_field_inner_distance
      - id: speed_level_inner
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level_inner
      - id: out_distance
        type: f4
        if: has_field_out_distance
      - id: stop_distance
        type: f4
        if: has_field_stop_distance
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_inner_distance: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_speed_level_inner: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_out_distance: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_stop_distance: # Field №4
        value: (bit_field & 0b10000) != 0
