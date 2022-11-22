types:
  array_of__config_level_monster_unit__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_level_monster_unit
        repeat: expr
        repeat-expr: length.value
