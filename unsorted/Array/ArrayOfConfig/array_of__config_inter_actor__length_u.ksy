types:
  array_of__config_inter_actor__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_inter_actor
        repeat: expr
        repeat-expr: length.value
