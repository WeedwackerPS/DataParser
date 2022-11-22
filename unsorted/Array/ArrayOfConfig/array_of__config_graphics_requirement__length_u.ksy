types:
  array_of__config_graphics_requirement__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_graphics_requirement
        repeat: expr
        repeat-expr: length.value
