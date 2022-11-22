types:
  array_of__config_music_fixed_time_transitions__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_music_fixed_time_transitions
        repeat: expr
        repeat-expr: length.value
