types:
  array_of__camera_play_condition__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: camera_play_condition
        repeat: expr
        repeat-expr: length.value
