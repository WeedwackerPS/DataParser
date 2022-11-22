types:
  array_of__config_audio_stage_progress_event__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_audio_stage_progress_event
        repeat: expr
        repeat-expr: length.value
