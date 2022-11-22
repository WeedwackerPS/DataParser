types:
  array_of__token_json_path__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: token_json_path
        repeat: expr
        repeat-expr: length.value
