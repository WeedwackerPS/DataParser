types:
  disp__config_vod_player:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_vod_player
            1: config_live_player
            _: aux_types::error
