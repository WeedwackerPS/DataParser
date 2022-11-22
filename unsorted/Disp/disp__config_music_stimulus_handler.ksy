types:
  disp__config_music_stimulus_handler:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_music_stimulus_handler
            1: config_music_parameterized_stimulus_handler
            2: config_music_int_stimulus_handler
            3: config_music_u_int_stimulus_handler
            4: config_music_float_stimulus_handler
            5: config_music_string_stimulus_handler
            6: config_music_multi_value_parameterized_stimulus_handler
            7: config_music_u_int_multi_value_stimulus_handler
            8: config_music_string_multi_value_stimulus_handler
            9: config_music_u_int_presence_stimulus_handler
            10: config_music_u_int_absence_stimulus_handler
            11: config_music_string_presence_stimulus_handler
            12: config_music_string_absence_stimulus_handler
            _: aux_types::error
