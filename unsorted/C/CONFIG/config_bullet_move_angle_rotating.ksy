types:
  config_bullet_move_angle_rotating:
    seq:
      - id: base
        type: config_bullet_move_angle
      - id: bit_field
        type: u1
      - id: angular_velocity
        type: vector
        if: has_field_angular_velocity
    instances:
      has_field_angular_velocity: # Field №0
        value: (bit_field & 0b1) != 0
