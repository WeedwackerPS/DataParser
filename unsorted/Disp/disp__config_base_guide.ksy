types:
  disp__config_base_guide:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_guide
            1: config_guide_action
            2: config_guide_condition
            3: config_guide_ui_mask_action
            4: config_guide_show_page
            5: config_guide_info_dialog_action
            6: config_guide_set_open_state_action
            7: config_guide_add_task_action
            8: config_guide_end_task_action
            9: config_guide_pause_action
            10: config_guide_force_avatar_move_action
            11: config_guide_camera_control_action
            12: config_guide_add_cmd
            13: config_guide_delay_do_action
            14: config_guide_do_action_by_predicate
            15: config_guide_show_tutorial_action
            16: config_guide_show_panel_action
            17: config_guide_switch_input_context_action
            18: config_guide_finish_quest_action
            19: config_avatar_equip_changed_condition
            20: config_guide_open_state_condition
            21: config_guide_level_condition
            22: config_guide_open_ui_condition
            23: config_guide_avatar_change_condition
            24: config_guide_can_get_personal_line_key_condition
            25: config_guide_climate_type_condition
            26: config_guide_team_member_condition
            27: config_guide_avatar_state_condition
            28: config_guide_button_click_condition
            29: config_guide_tab_item_condition
            30: config_guide_theatre_mechanicus_building_select_condition
            31: config_guide_theatre_mechanicus_info_select_condition
            32: config_guide_has_item_condition
            33: config_guide_camera_condition
            34: config_guide_avatar_action_condition
            35: config_guide_delay_finish_condition
            36: config_guide_multi_single_player_condition
            37: config_guide_multi_player_condition
            38: config_guide_has_avatar_condition
            39: config_guide_kill_monster_condition
            40: config_guide_check_task_finish_condition
            41: config_guide_check_quest_state_condition
            42: config_guide_navigation_condition
            43: config_guide_open_paimon_navigation_condition
            44: config_guide_virtual_dial_action_condition
            45: config_guide_check_platform_condition
            46: config_guide_check_aim_condition
            47: config_guide_level_type_condition
            48: config_guide_press_key_condition
            49: config_guide_map_click_condition
            50: config_guide_scene_id_condition
            51: config_guide_dungeon_id_condition
            52: config_guide_home_scene_condition
            53: config_guide_foundation_build_condition
            54: config_guide_mechanicus_pick_card_condition
            55: config_guide_mechanicus_curse_card_condition
            56: config_guide_page_check_base_condition
            57: config_guide_anchor_unlock_condition
            58: config_guide_fly_start_condition
            59: config_guide_fly_finish_condition
            60: config_guide_fly_fail_condition
            61: config_guide_hideand_seek_skill_category_condition
            _: aux_types::error
