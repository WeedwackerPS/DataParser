types:
  array_of__color_vector__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: color_vector
        repeat: expr
        repeat-expr: length.value
