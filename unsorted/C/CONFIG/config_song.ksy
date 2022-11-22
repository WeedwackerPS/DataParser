types:
  config_song:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_s
        if: has_field_id
      - id: switch_value
        type: config_wwise_string
        if: has_field_switch_value
      - id: sync_transitions
        type: config_music_sync_transitions
        if: has_field_sync_transitions
      - id: time_transitions
        type: config_music_time_transitions
        if: has_field_time_transitions
      - id: stimulus_handlers
        type: array_of__disp__config_music_stimulus_handler__length_u
        if: has_field_stimulus_handlers
      - id: ignorance_mask
        type: aux_types::vlq_base128_le_s
        if: has_field_ignorance_mask
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_switch_value: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_sync_transitions: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_time_transitions: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_stimulus_handlers: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_ignorance_mask: # Field №5
        value: (bit_field & 0b100000) != 0
