types:
  dict_of__enum__input_event_type_config_base_input_event:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__input_event_type_config_base_input_event
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__input_event_type_config_base_input_event:
    seq:
      - id: key
        type: enum__input_event_type
      - id: value
        type: config_base_input_event
