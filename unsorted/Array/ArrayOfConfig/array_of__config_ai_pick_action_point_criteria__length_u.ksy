types:
  array_of__config_ai_pick_action_point_criteria__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ai_pick_action_point_criteria
        repeat: expr
        repeat-expr: length.value
