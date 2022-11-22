types:
  config_music_game:
    seq:
      - id: bit_field
        type: u1
      - id: button_sequence
        type: array_of__config_music_game_key__length_u
        if: has_field_button_sequence
      - id: instrument
        type: aux_types::vlq_base128_le_s
        if: has_field_instrument
      - id: play_music_event
        type: config_wwise_string
        if: has_field_play_music_event
      - id: stop_music_event
        type: config_wwise_string
        if: has_field_stop_music_event
      - id: pause_music_event
        type: config_wwise_string
        if: has_field_pause_music_event
      - id: resume_music_event
        type: config_wwise_string
        if: has_field_resume_music_event
      - id: auto_play
        type: u1
        if: has_field_auto_play
    instances:
      has_field_button_sequence: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_instrument: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_play_music_event: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_stop_music_event: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_pause_music_event: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_resume_music_event: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_auto_play: # Field №6
        value: (bit_field & 0b1000000) != 0
