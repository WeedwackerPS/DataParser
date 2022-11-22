types:
  disp__config_base_inter_action:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_inter_action
            1: config_lua_action
            2: config_dialog_inter_action
            3: config_dialog_next_action
            4: config_dialog_select_action
            5: config_body_lang_inter_action
            6: config_steer_inter_action
            7: config_look_at_inter_action
            8: config_look_at_eye_ctrl_inter_action
            9: config_camera_move_inter_action
            10: config_cutscene_inter_action
            11: config_visible_inter_action
            12: config_audio_state_inter_action
            13: config_shop_exchange_inter_action
            14: config_gadget_touch_action
            15: config_ui_trigger_inter_action
            16: config_emo_sync_inter_action
            17: config_emotion_inter_action
            18: config_black_screen_action
            19: config_camera_shake_action
            20: config_show_message_action
            21: config_audio_play_action
            22: config_video_play_action
            23: config_first_sight_action
            24: config_camera_dof_action
            25: config_move_to_action
            26: config_request_msg_action
            27: config_emoji_bubble_action
            28: config_time_protect_action
            29: config_simple_black_screen_action
            30: config_simple_ui_show_inter_action
            31: config_open_blossom_mark_inter_action
            32: config_speech_bubble_action
            33: config_emotion_template_action
            34: config_sit_or_stand_action
            35: config_play_effect_action
            36: config_teleport_to_action
            37: config_set_animator_action
            38: config_play_post_effect_action
            39: config_play_frame_face_animation_action
            40: config_hide_widget_pet
            41: config_local_gadget_op
            _: aux_types::error
