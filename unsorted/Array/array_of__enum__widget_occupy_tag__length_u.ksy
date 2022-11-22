types:
  array_of__enum__widget_occupy_tag__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__widget_occupy_tag
        repeat: expr
        repeat-expr: length.value
