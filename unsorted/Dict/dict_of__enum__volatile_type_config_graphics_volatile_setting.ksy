types:
  dict_of__enum__volatile_type_config_graphics_volatile_setting:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__volatile_type_config_graphics_volatile_setting
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__volatile_type_config_graphics_volatile_setting:
    seq:
      - id: key
        type: enum__volatile_type
      - id: value
        type: config_graphics_volatile_setting
