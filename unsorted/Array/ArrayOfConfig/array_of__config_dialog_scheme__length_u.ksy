types:
  array_of__config_dialog_scheme__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_dialog_scheme
        repeat: expr
        repeat-expr: length.value
