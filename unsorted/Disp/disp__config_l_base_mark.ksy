types:
  disp__config_l_base_mark:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_l_base_mark
            1: config_l_map_mark
            _: aux_types::error
