types:
  array_of__enum__text_param_type__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: enum__text_param_type
        repeat: expr
        repeat-expr: length.value
