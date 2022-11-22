types:
  config_music_stimulus_handler:
    seq:
      - id: bit_field
        type: u1
      - id: stimulus
        type: enum__music_stimulus
        if: has_field_stimulus
      - id: transitions
        type: config_music_transitions
        if: has_field_transitions
    instances:
      has_field_stimulus: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_transitions: # Field №1
        value: (bit_field & 0b10) != 0
