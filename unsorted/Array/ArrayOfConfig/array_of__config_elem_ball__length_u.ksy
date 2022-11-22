types:
  array_of__config_elem_ball__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_elem_ball
        repeat: expr
        repeat-expr: length.value
