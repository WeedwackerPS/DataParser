types:
  dict_of__enum__action_slot_type_array_of__config_action_button__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__action_slot_type_array_of__config_action_button__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__action_slot_type_array_of__config_action_button__length_u:
    seq:
      - id: key
        type: enum__action_slot_type
      - id: value
        type: array_of__config_action_button__length_u
