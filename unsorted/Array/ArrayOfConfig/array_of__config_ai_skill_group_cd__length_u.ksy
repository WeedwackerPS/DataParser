types:
  array_of__config_ai_skill_group_cd__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ai_skill_group_cd
        repeat: expr
        repeat-expr: length.value
