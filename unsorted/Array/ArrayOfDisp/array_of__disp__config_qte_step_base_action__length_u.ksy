types:
  array_of__disp__config_qte_step_base_action__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_qte_step_base_action
        repeat: expr
        repeat-expr: length.value
