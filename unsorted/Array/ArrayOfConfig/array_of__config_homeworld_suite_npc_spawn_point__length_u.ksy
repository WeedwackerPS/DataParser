types:
  array_of__config_homeworld_suite_npc_spawn_point__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_homeworld_suite_npc_spawn_point
        repeat: expr
        repeat-expr: length.value
