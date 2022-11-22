types:
  array_of__config_crowd_scene_tag_restriction__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_crowd_scene_tag_restriction
        repeat: expr
        repeat-expr: length.value
