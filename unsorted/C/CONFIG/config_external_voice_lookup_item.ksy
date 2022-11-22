types:
  config_external_voice_lookup_item:
    seq:
      - id: bit_field
        type: u1
      - id: file_id
        type: aux_types::vlq_base128_le_u
        if: has_field_file_id
      - id: game_trigger
        type: enum__audio_voice_trigger
        if: has_field_game_trigger
      - id: game_trigger_args
        type: aux_types::vlq_base128_le_u
        if: has_field_game_trigger_args
    instances:
      has_field_file_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_game_trigger: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_game_trigger_args: # Field №2
        value: (bit_field & 0b100) != 0
