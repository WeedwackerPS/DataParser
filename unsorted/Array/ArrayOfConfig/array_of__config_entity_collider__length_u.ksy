types:
  array_of__config_entity_collider__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_entity_collider
        repeat: expr
        repeat-expr: length.value
