types:
  disp__config_qte_step_base_action:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_qte_step_base_action
            1: config_qte_step_power_bar_action
            2: config_qte_step_play_audio_action
            3: config_qte_step_base_inter_action
            4: config_qte_step_camera_move_action
            _: aux_types::error
