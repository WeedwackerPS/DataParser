types:
  dict_of__enum__config_key_code_aux_types__string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__config_key_code_aux_types__string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__config_key_code_aux_types__string:
    seq:
      - id: key
        type: enum__config_key_code
      - id: value
        type: aux_types::string
