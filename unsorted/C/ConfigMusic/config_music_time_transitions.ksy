types:
  config_music_time_transitions:
    seq:
      - id: bit_field
        type: u1
      - id: interval
        type: f4
        if: has_field_interval
      - id: repetitives
        type: config_music_transitions
        if: has_field_repetitives
      - id: fixed_times
        type: array_of__config_music_fixed_time_transitions__length_u
        if: has_field_fixed_times
    instances:
      has_field_interval: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_repetitives: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_fixed_times: # Field №2
        value: (bit_field & 0b100) != 0
