types:
  array_of__point2d__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: point2d
        repeat: expr
        repeat-expr: length.value
