types:
  dict_of__enum__option_type_config_particle_effect_setting:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__option_type_config_particle_effect_setting
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__option_type_config_particle_effect_setting:
    seq:
      - id: key
        type: enum__option_type
      - id: value
        type: config_particle_effect_setting
