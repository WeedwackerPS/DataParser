types:
  array_of__disp__context_condition__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__context_condition
        repeat: expr
        repeat-expr: length.value
