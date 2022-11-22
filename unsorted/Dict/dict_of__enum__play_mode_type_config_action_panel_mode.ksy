types:
  dict_of__enum__play_mode_type_config_action_panel_mode:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__play_mode_type_config_action_panel_mode
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__play_mode_type_config_action_panel_mode:
    seq:
      - id: key
        type: enum__play_mode_type
      - id: value
        type: config_action_panel_mode
