types:
  array_of__animator_int__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: animator_int
        repeat: expr
        repeat-expr: length.value
