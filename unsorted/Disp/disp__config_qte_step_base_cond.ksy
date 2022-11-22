types:
  disp__config_qte_step_base_cond:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_qte_step_base_cond
            1: config_qte_step_power_bar_cond
            _: aux_types::error
