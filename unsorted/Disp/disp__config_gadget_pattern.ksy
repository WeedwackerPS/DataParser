types:
  disp__config_gadget_pattern:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_gadget_pattern
            1: config_gadget_collided_pattern
            2: config_bullet_pattern
            _: aux_types::error
