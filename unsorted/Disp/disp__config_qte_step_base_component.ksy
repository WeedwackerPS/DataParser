types:
  disp__config_qte_step_base_component:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_qte_step_base_component
            1: config_qte_step_button_component
            2: config_qte_step_power_bar_component
            _: aux_types::error
