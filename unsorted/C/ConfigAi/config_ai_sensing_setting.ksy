types:
  config_ai_sensing_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: sensitivity
        type: f4
        if: has_field_sensitivity
      - id: enable_vision
        type: u1
        if: has_field_enable_vision
      - id: view_range
        type: f4
        if: has_field_view_range
      - id: view_panoramic
        type: u1
        if: has_field_view_panoramic
      - id: horizontal_fov
        type: f4
        if: has_field_horizontal_fov
      - id: vertical_fov
        type: f4
        if: has_field_vertical_fov
      - id: hear_attraction_range
        type: f4
        if: has_field_hear_attraction_range
      - id: hear_footstep_range
        type: f4
        if: has_field_hear_footstep_range
      - id: feel_range
        type: f4
        if: has_field_feel_range
      - id: sourceless_hit_attraction_range
        type: f4
        if: has_field_sourceless_hit_attraction_range
    instances:
      has_field_sensitivity: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_enable_vision: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_view_range: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_view_panoramic: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_horizontal_fov: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_vertical_fov: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_hear_attraction_range: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_hear_footstep_range: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_feel_range: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_sourceless_hit_attraction_range: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
