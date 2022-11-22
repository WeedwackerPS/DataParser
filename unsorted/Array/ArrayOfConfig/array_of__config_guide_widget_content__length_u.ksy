types:
  array_of__config_guide_widget_content__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_guide_widget_content
        repeat: expr
        repeat-expr: length.value
