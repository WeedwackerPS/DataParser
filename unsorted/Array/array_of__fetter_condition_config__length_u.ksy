types:
  array_of__fetter_condition_config__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: fetter_condition_config
        repeat: expr
        repeat-expr: length.value
