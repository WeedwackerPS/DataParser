types:
  disp__config_skin:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_skin
            1: config_monster_skin
            _: aux_types::error
