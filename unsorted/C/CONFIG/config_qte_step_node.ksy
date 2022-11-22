types:
  config_qte_step_node:
    seq:
      - id: bit_field
        type: u1
      - id: start_trigger
        type: array_of__config_qte_step_cond_action_group__length_u
        if: has_field_start_trigger
      - id: components
        type: array_of__disp__config_qte_step_base_component__length_u
        if: has_field_components
      - id: success_trigger
        type: array_of__config_qte_step_cond_action_group__length_u
        if: has_field_success_trigger
      - id: fail_trigger
        type: array_of__config_qte_step_cond_action_group__length_u
        if: has_field_fail_trigger
    instances:
      has_field_start_trigger: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_components: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_success_trigger: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_fail_trigger: # Field №3
        value: (bit_field & 0b1000) != 0
