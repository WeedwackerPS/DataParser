types:
  config_music_sync_transitions:
    seq:
      - id: bit_field
        type: u1
      - id: beat_transitions
        type: config_music_transitions
        if: has_field_beat_transitions
      - id: bar_transitions
        type: config_music_transitions
        if: has_field_bar_transitions
      - id: grid_transitions
        type: config_music_transitions
        if: has_field_grid_transitions
      - id: cue_transitions
        type: config_music_transitions
        if: has_field_cue_transitions
      - id: exit_transitions
        type: config_music_transitions
        if: has_field_exit_transitions
    instances:
      has_field_beat_transitions: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_bar_transitions: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_grid_transitions: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_cue_transitions: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_exit_transitions: # Field №4
        value: (bit_field & 0b10000) != 0
