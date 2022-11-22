types:
  array_of__config_npc_born_pos__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_npc_born_pos
        repeat: expr
        repeat-expr: length.value
