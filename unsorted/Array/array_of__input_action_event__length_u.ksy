types:
  array_of__input_action_event__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: input_action_event
        repeat: expr
        repeat-expr: length.value
