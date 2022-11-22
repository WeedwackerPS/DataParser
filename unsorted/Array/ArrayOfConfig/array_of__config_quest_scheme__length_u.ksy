types:
  array_of__config_quest_scheme__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_quest_scheme
        repeat: expr
        repeat-expr: length.value
