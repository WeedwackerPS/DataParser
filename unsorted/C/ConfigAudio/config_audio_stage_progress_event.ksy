types:
  config_audio_stage_progress_event:
    seq:
      - id: bit_field
        type: u1
      - id: progress
        type: f4
        if: has_field_progress
      - id: events
        type: array_of__aux_types__string__length_u
        if: has_field_events
    instances:
      has_field_progress: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_events: # Field №1
        value: (bit_field & 0b10) != 0
