types:
  config_music_transitions:
    seq:
      - id: bit_field
        type: u1
      - id: shifters
        type: array_of__config_music_shifter__length_u
        if: has_field_shifters
    instances:
      has_field_shifters: # Field №0
        value: (bit_field & 0b1) != 0
