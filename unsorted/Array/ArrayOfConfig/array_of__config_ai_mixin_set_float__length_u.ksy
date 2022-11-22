types:
  array_of__config_ai_mixin_set_float__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ai_mixin_set_float
        repeat: expr
        repeat-expr: length.value
