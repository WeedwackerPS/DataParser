types:
  config_qte_step_button_component:
    seq:
      - id: base
        type: config_qte_step_base_component
      - id: bit_field
        type: u1
      - id: position_id
        type: aux_types::vlq_base128_le_u
        if: has_field_position_id
      - id: input_event
        type: enum__qte_step_button_input_type
        if: has_field_input_event
      - id: click_trigger
        type: array_of__config_qte_step_cond_action_group__length_u
        if: has_field_click_trigger
    instances:
      has_field_position_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_input_event: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_click_trigger: # Field №2
        value: (bit_field & 0b100) != 0
