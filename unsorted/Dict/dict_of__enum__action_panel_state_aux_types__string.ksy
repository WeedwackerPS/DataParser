types:
  dict_of__enum__action_panel_state_aux_types__string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__action_panel_state_aux_types__string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__action_panel_state_aux_types__string:
    seq:
      - id: key
        type: enum__action_panel_state
      - id: value
        type: aux_types::string
