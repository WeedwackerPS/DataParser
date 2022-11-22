types:
  dict_of__enum__fade_tint_quality_level_config_tint_fade_setting:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__fade_tint_quality_level_config_tint_fade_setting
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__fade_tint_quality_level_config_tint_fade_setting:
    seq:
      - id: key
        type: enum__fade_tint_quality_level
      - id: value
        type: config_tint_fade_setting
