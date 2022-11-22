types:
  array_of__config_input_hint__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_input_hint
        repeat: expr
        repeat-expr: length.value
