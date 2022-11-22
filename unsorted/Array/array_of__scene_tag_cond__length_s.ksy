types:
  array_of__scene_tag_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: scene_tag_cond
        repeat: expr
        repeat-expr: length.value
