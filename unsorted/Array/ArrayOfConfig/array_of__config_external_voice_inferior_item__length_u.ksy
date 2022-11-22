types:
  array_of__config_external_voice_inferior_item__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_external_voice_inferior_item
        repeat: expr
        repeat-expr: length.value
