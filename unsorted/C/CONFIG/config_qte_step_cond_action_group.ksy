types:
  config_qte_step_cond_action_group:
    seq:
      - id: bit_field
        type: u1
      - id: cond_group
        type: config_qte_step_cond_group
        if: has_field_cond_group
      - id: actions
        type: array_of__disp__config_qte_step_base_action__length_u
        if: has_field_actions
    instances:
      has_field_cond_group: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_actions: # Field №1
        value: (bit_field & 0b10) != 0
