types:
  array_of__indicator_logic__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: indicator_logic
        repeat: expr
        repeat-expr: length.value
