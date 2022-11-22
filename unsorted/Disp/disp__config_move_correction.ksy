types:
  disp__config_move_correction:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_move_correction
            1: config_parabola_bullet_move_correction
            _: aux_types::error
