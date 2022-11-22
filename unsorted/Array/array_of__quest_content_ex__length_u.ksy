types:
  array_of__quest_content_ex__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: quest_content_ex
        repeat: expr
        repeat-expr: length.value
