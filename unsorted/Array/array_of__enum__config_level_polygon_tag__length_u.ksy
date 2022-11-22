types:
  array_of__enum__config_level_polygon_tag__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__config_level_polygon_tag
        repeat: expr
        repeat-expr: length.value
