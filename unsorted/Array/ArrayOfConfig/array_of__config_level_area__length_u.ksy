types:
  array_of__config_level_area__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_level_area
        repeat: expr
        repeat-expr: length.value
