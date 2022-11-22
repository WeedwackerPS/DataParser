types:
  config_gadget_turn_state:
    seq:
      - id: bit_field
        type: u1
      - id: angle_around_x
        type: f4
        if: has_field_angle_around_x
      - id: angle_around_y
        type: f4
        if: has_field_angle_around_y
      - id: angle_around_z
        type: f4
        if: has_field_angle_around_z
      - id: lerp_curve_index
        type: aux_types::vlq_base128_le_u
        if: has_field_lerp_curve_index
      - id: lerp_time
        type: f4
        if: has_field_lerp_time
    instances:
      has_field_angle_around_x: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_angle_around_y: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_angle_around_z: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_lerp_curve_index: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_lerp_time: # Field №4
        value: (bit_field & 0b10000) != 0
