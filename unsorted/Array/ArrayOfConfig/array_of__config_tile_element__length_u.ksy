types:
  array_of__config_tile_element__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_tile_element
        repeat: expr
        repeat-expr: length.value
