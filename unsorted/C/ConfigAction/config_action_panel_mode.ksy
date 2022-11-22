types:
  config_action_panel_mode:
    seq:
      - id: bit_field
        type: u1
      - id: state_map
        type: dict_of__enum__action_panel_state_aux_types__string
        if: has_field_state_map
    instances:
      has_field_state_map: # Field №0
        value: (bit_field & 0b1) != 0
