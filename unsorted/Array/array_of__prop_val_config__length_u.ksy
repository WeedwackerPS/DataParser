types:
  array_of__prop_val_config__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: prop_val_config
        repeat: expr
        repeat-expr: length.value
