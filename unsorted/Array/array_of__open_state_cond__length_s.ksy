types:
  array_of__open_state_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: open_state_cond
        repeat: expr
        repeat-expr: length.value
