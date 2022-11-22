types:
  array_of__config_home_block__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_home_block
        repeat: expr
        repeat-expr: length.value
