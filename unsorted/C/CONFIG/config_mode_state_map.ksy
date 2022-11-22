types:
  config_mode_state_map:
    seq:
      - id: bit_field
        type: u1
      - id: states
        type: dict_of__aux_types__string_config_action_panel_state
        if: has_field_states
      - id: modes
        type: dict_of__enum__play_mode_type_config_action_panel_mode
        if: has_field_modes
    instances:
      has_field_states: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_modes: # Field №1
        value: (bit_field & 0b10) != 0
