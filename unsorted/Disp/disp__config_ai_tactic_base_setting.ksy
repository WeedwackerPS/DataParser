types:
  disp__config_ai_tactic_base_setting:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_ai_tactic_base_setting
            1: config_ai_return_to_born_pos_setting
            2: config_ai_wander_setting
            3: config_ai_follow_scripted_path_setting
            4: config_ai_follow_server_route_setting
            5: config_ai_investigate_setting
            6: config_ai_react_action_point_setting
            7: config_ai_patrol_follow_setting
            8: config_ai_combat_follow_move_setting
            9: config_ai_melee_charge_setting
            10: config_ai_facing_move_setting
            11: config_ai_surround_setting
            12: config_ai_group_surround_setting
            13: config_ai_find_back_setting
            14: config_ai_combat_fixed_move_setting
            15: config_ai_crab_move_setting
            16: config_ai_flee_setting
            17: config_ai_flee_on_block_avatar_landing_setting
            18: config_ai_spacial_chase_setting
            19: config_ai_spacial_probe_setting
            20: config_ai_spacial_adjust_setting
            21: config_ai_bird_circling_setting
            22: config_ai_scripted_move_to_setting
            23: config_ai_landing_setting
            24: config_ai_extraction_setting
            25: config_ai_brownian_motion_setting
            26: config_ai_fishing_bites_bait_setting
            27: config_ai_fishing_pretend_bites_setting
            28: config_ai_fishing_flee_setting
            29: config_ai_spacial_facing_move_setting
            _: aux_types::error
