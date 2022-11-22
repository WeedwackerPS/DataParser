types:
  config_music_fixed_time_transitions:
    seq:
      - id: bit_field
        type: u1
      - id: transitions
        type: config_music_transitions
        if: has_field_transitions
      - id: fixed_time
        type: f4
        if: has_field_fixed_time
    instances:
      has_field_transitions: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_fixed_time: # Field №1
        value: (bit_field & 0b10) != 0
