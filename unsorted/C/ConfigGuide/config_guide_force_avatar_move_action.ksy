types:
  config_guide_force_avatar_move_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: angle
        type: f4
        if: has_field_angle
      - id: mold
        type: f4
        if: has_field_mold
    instances:
      has_field_angle: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_mold: # Field №1
        value: (bit_field & 0b10) != 0
