types:
  array_of__config_home_furniture__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_home_furniture
        repeat: expr
        repeat-expr: length.value
