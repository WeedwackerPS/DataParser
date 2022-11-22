types:
  dict_of__enum__shadow_quality_config_shadow_quality_setting:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__shadow_quality_config_shadow_quality_setting
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__shadow_quality_config_shadow_quality_setting:
    seq:
      - id: key
        type: enum__shadow_quality
      - id: value
        type: config_shadow_quality_setting
