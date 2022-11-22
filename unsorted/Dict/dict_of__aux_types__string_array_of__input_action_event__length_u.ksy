types:
  dict_of__aux_types__string_array_of__input_action_event__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_array_of__input_action_event__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_array_of__input_action_event__length_u:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: array_of__input_action_event__length_u
