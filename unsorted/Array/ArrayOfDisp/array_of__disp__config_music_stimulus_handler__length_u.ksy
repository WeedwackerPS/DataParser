types:
  array_of__disp__config_music_stimulus_handler__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_music_stimulus_handler
        repeat: expr
        repeat-expr: length.value
