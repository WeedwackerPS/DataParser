types:
  array_of__config_ai_mixin_set_controller_parameter__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ai_mixin_set_controller_parameter
        repeat: expr
        repeat-expr: length.value
