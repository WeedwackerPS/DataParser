types:
  array_of__config_ai_pose_control_item__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ai_pose_control_item
        repeat: expr
        repeat-expr: length.value
