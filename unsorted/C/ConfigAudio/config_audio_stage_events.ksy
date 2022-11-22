types:
  config_audio_stage_events:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_s
        if: has_field_id
      - id: stage_create_events
        type: array_of__aux_types__string__length_u
        if: has_field_stage_create_events
      - id: stage_progress_events
        type: array_of__config_audio_stage_progress_event__length_u
        if: has_field_stage_progress_events
      - id: stage_start_events
        type: array_of__aux_types__string__length_u
        if: has_field_stage_start_events
      - id: stage_mature_events
        type: array_of__aux_types__string__length_u
        if: has_field_stage_mature_events
      - id: stage_teleport_events
        type: array_of__config_audio_stage_progress_event__length_u
        if: has_field_stage_teleport_events
      - id: stage_exit_events
        type: array_of__aux_types__string__length_u
        if: has_field_stage_exit_events
      - id: state_value
        type: aux_types::string
        if: has_field_state_value
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_stage_create_events: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_stage_progress_events: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_stage_start_events: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_stage_mature_events: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_stage_teleport_events: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_stage_exit_events: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_state_value: # Field №7
        value: (bit_field & 0b10000000) != 0
