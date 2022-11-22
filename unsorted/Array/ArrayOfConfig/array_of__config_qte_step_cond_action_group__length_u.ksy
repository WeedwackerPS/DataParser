types:
  array_of__config_qte_step_cond_action_group__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_qte_step_cond_action_group
        repeat: expr
        repeat-expr: length.value
