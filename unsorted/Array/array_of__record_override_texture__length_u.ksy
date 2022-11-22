types:
  array_of__record_override_texture__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: record_override_texture
        repeat: expr
        repeat-expr: length.value
