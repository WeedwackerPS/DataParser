types:
  disp__config_entity:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_entity
            1: config_gadget
            2: config_character
            3: config_level_entity
            4: config_trans_point_entity
            5: config_avatar
            6: config_monster
            7: config_npc
            _: aux_types::error
