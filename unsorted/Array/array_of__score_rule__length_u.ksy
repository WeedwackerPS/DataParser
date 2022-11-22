types:
  array_of__score_rule__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: score_rule
        repeat: expr
        repeat-expr: length.value
