types:
  dict_of__aux_types__vlq_base128_le_u_config_home_fishpond:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_config_home_fishpond
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_config_home_fishpond:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: config_home_fishpond
