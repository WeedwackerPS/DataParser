types:
  disp__config_ai_threat_score_base_setting:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_ai_threat_score_base_setting
            1: config_aits_ability_global_value_setting
            2: config_aits_target_distance_setting
            3: config_aits_target_bearing_setting
            _: aux_types::error
