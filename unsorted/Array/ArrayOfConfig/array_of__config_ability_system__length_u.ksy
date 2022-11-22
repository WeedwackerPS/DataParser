types:
  array_of__config_ability_system__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ability_system
        repeat: expr
        repeat-expr: length.value
