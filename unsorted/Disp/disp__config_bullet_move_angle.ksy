types:
  disp__config_bullet_move_angle:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_bullet_move_angle
            1: config_bullet_move_angle_by_velocity
            2: config_bullet_move_angle_rotating
            _: aux_types::error
