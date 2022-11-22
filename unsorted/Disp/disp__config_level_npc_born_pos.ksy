types:
  disp__config_level_npc_born_pos:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_level_npc_born_pos
            1: config_level_npc_born_pos_no_group
            _: aux_types::error
