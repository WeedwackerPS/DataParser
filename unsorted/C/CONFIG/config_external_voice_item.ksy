types:
  config_external_voice_item:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: guid
        type: aux_types::string
        if: has_field_guid
      - id: play_rate
        type: f4
        if: has_field_play_rate
      - id: initial_delay
        type: f4
        if: has_field_initial_delay
      - id: cooldown
        type: aux_types::vlq_base128_le_s
        if: has_field_cooldown
      - id: interrupted_guids
        type: array_of__config_external_voice_inferior_item__length_u
        if: has_field_interrupted_guids
      - id: queue_up_config
        type: aux_types::vlq_base128_le_s
        if: has_field_queue_up_config
      - id: game_trigger
        type: aux_types::string
        if: has_field_game_trigger
      - id: game_trigger_args
        type: aux_types::vlq_base128_le_u
        if: has_field_game_trigger_args
      - id: personal_config
        type: aux_types::vlq_base128_le_s
        if: has_field_personal_config
      - id: view_config
        type: aux_types::vlq_base128_le_s
        if: has_field_view_config
      - id: clear_all
        type: u1
        if: has_field_clear_all
      - id: is_global_stop
        type: u1
        if: has_field_is_global_stop
      - id: is_play_on_team
        type: u1
        if: has_field_is_play_on_team
      - id: avoid_repeat
        type: aux_types::vlq_base128_le_s
        if: has_field_avoid_repeat
      - id: parent_id
        type: aux_types::string
        if: has_field_parent_id
      - id: source_names
        type: array_of__config_external_voice_sound__length_u
        if: has_field_source_names
    instances:
      has_field_guid: # Field №0
        value: (bit_field.value & 000000001) != 0
      has_field_play_rate: # Field №1
        value: (bit_field.value & 000000010) != 0
      has_field_initial_delay: # Field №2
        value: (bit_field.value & 000000100) != 0
      has_field_cooldown: # Field №3
        value: (bit_field.value & 000001000) != 0
      has_field_interrupted_guids: # Field №4
        value: (bit_field.value & 000010000) != 0
      has_field_queue_up_config: # Field №5
        value: (bit_field.value & 000100000) != 0
      has_field_game_trigger: # Field №6
        value: (bit_field.value & 001000000) != 0
      has_field_game_trigger_args: # Field №7
        value: (bit_field.value & 010000000) != 0
      has_field_personal_config: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_view_config: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_clear_all: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_is_global_stop: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_is_play_on_team: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_avoid_repeat: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_parent_id: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_source_names: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
