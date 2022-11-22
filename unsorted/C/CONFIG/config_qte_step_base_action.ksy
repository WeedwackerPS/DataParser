types:
  config_qte_step_base_action:
    seq:
      - id: bit_field
        type: u1
      - id: action_type
        type: enum__qte_step_action_type
        if: has_field_action_type
      - id: duration
        type: f4
        if: has_field_duration
    instances:
      has_field_action_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_duration: # Field №1
        value: (bit_field & 0b10) != 0
