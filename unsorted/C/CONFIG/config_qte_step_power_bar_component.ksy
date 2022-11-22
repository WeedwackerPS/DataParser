types:
  config_qte_step_power_bar_component:
    seq:
      - id: base
        type: config_qte_step_base_component
      - id: bit_field
        type: u1
      - id: init_value
        type: aux_types::vlq_base128_le_u
        if: has_field_init_value
      - id: max_value
        type: aux_types::vlq_base128_le_u
        if: has_field_max_value
      - id: auto_change_value_per_second
        type: f4
        if: has_field_auto_change_value_per_second
      - id: no_input_auto_change_interval
        type: f4
        if: has_field_no_input_auto_change_interval
      - id: value_change_trigger
        type: array_of__config_qte_step_cond_action_group__length_u
        if: has_field_value_change_trigger
    instances:
      has_field_init_value: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_max_value: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_auto_change_value_per_second: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_no_input_auto_change_interval: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_value_change_trigger: # Field №4
        value: (bit_field & 0b10000) != 0
