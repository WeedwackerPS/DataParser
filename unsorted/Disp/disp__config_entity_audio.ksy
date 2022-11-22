types:
  disp__config_entity_audio:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_entity_audio
            1: config_gadget_audio
            2: config_character_audio
            3: config_vehicle_audio
            4: config_avatar_audio
            5: config_monster_audio
            _: aux_types::error
