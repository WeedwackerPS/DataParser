types:
  array_of__animator_bool__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: animator_bool
        repeat: expr
        repeat-expr: length.value
