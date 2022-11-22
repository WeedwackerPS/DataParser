types:
  config_music:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: switch_group
        type: config_wwise_string
        if: has_field_switch_group
      - id: play_event
        type: config_wwise_string
        if: has_field_play_event
      - id: stop_event
        type: config_wwise_string
        if: has_field_stop_event
      - id: pause_event
        type: config_wwise_string
        if: has_field_pause_event
      - id: resume_event
        type: config_wwise_string
        if: has_field_resume_event
      - id: duck_event
        type: config_wwise_string
        if: has_field_duck_event
      - id: unduck_event
        type: config_wwise_string
        if: has_field_unduck_event
      - id: start_transitions
        type: config_music_transitions
        if: has_field_start_transitions
      - id: sync_transitions
        type: config_music_sync_transitions
        if: has_field_sync_transitions
      - id: time_transitions
        type: config_music_time_transitions
        if: has_field_time_transitions
      - id: stimulus_handlers
        type: array_of__disp__config_music_stimulus_handler__length_u
        if: has_field_stimulus_handlers
    instances:
      has_field_switch_group: # Field №0
        value: (bit_field.value & 0001) != 0
      has_field_play_event: # Field №1
        value: (bit_field.value & 0010) != 0
      has_field_stop_event: # Field №2
        value: (bit_field.value & 0100) != 0
      has_field_pause_event: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_resume_event: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_duck_event: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_unduck_event: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_start_transitions: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_sync_transitions: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_time_transitions: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_stimulus_handlers: # Field №10
        value: (bit_field.value & 0b10000000000) != 0
