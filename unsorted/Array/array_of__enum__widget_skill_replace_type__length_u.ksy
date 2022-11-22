types:
  array_of__enum__widget_skill_replace_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__widget_skill_replace_type
        repeat: expr
        repeat-expr: length.value
