types:
  config_parabola_bullet_move_correction:
    seq:
      - id: base
        type: config_move_correction
      - id: bit_field
        type: u1
      - id: deviation
        type: f4
        if: has_field_deviation
      - id: fix_angle_of_ver
        type: f4
        if: has_field_fix_angle_of_ver
      - id: min_speed
        type: f4
        if: has_field_min_speed
      - id: max_speed
        type: f4
        if: has_field_max_speed
    instances:
      has_field_deviation: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_fix_angle_of_ver: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_min_speed: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_max_speed: # Field №3
        value: (bit_field & 0b1000) != 0
