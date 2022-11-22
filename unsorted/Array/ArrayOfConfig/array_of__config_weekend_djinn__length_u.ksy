types:
  array_of__config_weekend_djinn__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_weekend_djinn
        repeat: expr
        repeat-expr: length.value
