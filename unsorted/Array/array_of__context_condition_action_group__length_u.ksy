types:
  array_of__context_condition_action_group__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: context_condition_action_group
        repeat: expr
        repeat-expr: length.value
