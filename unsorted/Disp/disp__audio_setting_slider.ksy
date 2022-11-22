types:
  disp__audio_setting_slider:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: audio_setting_slider
            1: audio_setting_slider_post_event
            2: audio_setting_slider_post_voice
            _: aux_types::error
