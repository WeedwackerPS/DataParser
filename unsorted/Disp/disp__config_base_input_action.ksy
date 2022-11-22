types:
  disp__config_base_input_action:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_input_action
            1: config_compound_input_action
            _: aux_types::error
