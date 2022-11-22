types:
  array_of__config_content_restriction__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_content_restriction
        repeat: expr
        repeat-expr: length.value
