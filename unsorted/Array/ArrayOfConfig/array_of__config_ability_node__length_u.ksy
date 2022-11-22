types:
  array_of__config_ability_node__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_ability_node
        repeat: expr
        repeat-expr: length.value
