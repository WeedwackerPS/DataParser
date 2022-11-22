types:
  config_bullet_move_angle_by_velocity:
    seq:
      - id: base
        type: config_bullet_move_angle
      - id: bit_field
        type: u1
      - id: trace_lerp_coef
        type: f4
        if: has_field_trace_lerp_coef
      - id: is_smooth_rotation
        type: u1
        if: has_field_is_smooth_rotation
    instances:
      has_field_trace_lerp_coef: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_smooth_rotation: # Field №1
        value: (bit_field & 0b10) != 0
