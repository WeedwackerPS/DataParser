types:
  array_of__combo_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: combo_config
        repeat: expr
        repeat-expr: length.value
