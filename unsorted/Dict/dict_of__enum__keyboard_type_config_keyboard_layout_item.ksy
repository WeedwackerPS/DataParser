types:
  dict_of__enum__keyboard_type_config_keyboard_layout_item:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__keyboard_type_config_keyboard_layout_item
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__keyboard_type_config_keyboard_layout_item:
    seq:
      - id: key
        type: enum__keyboard_type
      - id: value
        type: config_keyboard_layout_item
