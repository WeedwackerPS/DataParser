types:
  array_of__quest_exec_ex__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: quest_exec_ex
        repeat: expr
        repeat-expr: length.value
