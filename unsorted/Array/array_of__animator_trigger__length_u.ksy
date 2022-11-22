types:
  array_of__animator_trigger__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: animator_trigger
        repeat: expr
        repeat-expr: length.value
