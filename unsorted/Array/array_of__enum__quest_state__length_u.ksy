types:
  array_of__enum__quest_state__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__quest_state
        repeat: expr
        repeat-expr: length.value
