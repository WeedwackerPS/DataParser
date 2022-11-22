types:
  array_of__shopmall_recommend_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: shopmall_recommend_cond
        repeat: expr
        repeat-expr: length.value
