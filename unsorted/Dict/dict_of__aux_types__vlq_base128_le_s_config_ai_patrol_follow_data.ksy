types:
  dict_of__aux_types__vlq_base128_le_s_config_ai_patrol_follow_data:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_config_ai_patrol_follow_data
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_config_ai_patrol_follow_data:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: config_ai_patrol_follow_data
