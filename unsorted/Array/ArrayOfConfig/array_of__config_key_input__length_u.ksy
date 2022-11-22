types:
  array_of__config_key_input__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_key_input
        repeat: expr
        repeat-expr: length.value
