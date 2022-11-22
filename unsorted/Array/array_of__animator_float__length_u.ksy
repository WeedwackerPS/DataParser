types:
  array_of__animator_float__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: animator_float
        repeat: expr
        repeat-expr: length.value
