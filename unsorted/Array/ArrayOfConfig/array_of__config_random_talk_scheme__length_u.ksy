types:
  array_of__config_random_talk_scheme__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_random_talk_scheme
        repeat: expr
        repeat-expr: length.value
