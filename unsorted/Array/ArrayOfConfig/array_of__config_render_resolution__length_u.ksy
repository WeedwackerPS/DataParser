types:
  array_of__config_render_resolution__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_render_resolution
        repeat: expr
        repeat-expr: length.value
