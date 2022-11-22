types:
  array_of__config_action_button__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_action_button
        repeat: expr
        repeat-expr: length.value
