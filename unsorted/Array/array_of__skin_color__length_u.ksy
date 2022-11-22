types:
  array_of__skin_color__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: skin_color
        repeat: expr
        repeat-expr: length.value
