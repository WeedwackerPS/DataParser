types:
  dict_of__aux_types__string_config_performance_setting:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_performance_setting
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_performance_setting:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_performance_setting
