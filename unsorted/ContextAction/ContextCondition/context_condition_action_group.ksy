types:
  context_condition_action_group:
    seq:
      - id: bit_field
        type: u1
      - id: condition_name
        type: aux_types::string
        if: has_field_condition_name
      - id: action_name
        type: aux_types::string
        if: has_field_action_name
    instances:
      has_field_condition_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_action_name: # Field №1
        value: (bit_field & 0b10) != 0
