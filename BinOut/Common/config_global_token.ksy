types:
  config_global_token:
    seq:
      - id: bit_field
        type: u1
      - id: action_token_group
        type: aux_types::string
        if: has_field_action_token_group
    instances:
      has_field_action_token_group: # Field №0
        value: (bit_field & 0b1) != 0
