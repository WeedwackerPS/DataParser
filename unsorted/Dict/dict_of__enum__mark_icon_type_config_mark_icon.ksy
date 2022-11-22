types:
  dict_of__enum__mark_icon_type_config_mark_icon:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__mark_icon_type_config_mark_icon
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__mark_icon_type_config_mark_icon:
    seq:
      - id: key
        type: enum__mark_icon_type
      - id: value
        type: config_mark_icon
