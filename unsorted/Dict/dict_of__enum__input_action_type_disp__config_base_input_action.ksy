types:
  dict_of__enum__input_action_type_disp__config_base_input_action:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__input_action_type_disp__config_base_input_action
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__input_action_type_disp__config_base_input_action:
    seq:
      - id: key
        type: enum__input_action_type
      - id: value
        type: disp__config_base_input_action
