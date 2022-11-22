types:
  config_gadget_turn:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: move_part_around_x
        type: aux_types::string
        if: has_field_move_part_around_x
      - id: anchor_part_around_x
        type: aux_types::string
        if: has_field_anchor_part_around_x
      - id: move_part_around_y
        type: aux_types::string
        if: has_field_move_part_around_y
      - id: anchor_part_around_y
        type: aux_types::string
        if: has_field_anchor_part_around_y
      - id: move_part_around_z
        type: aux_types::string
        if: has_field_move_part_around_z
      - id: anchor_part_around_z
        type: aux_types::string
        if: has_field_anchor_part_around_z
      - id: audio_begin_turning_event
        type: config_wwise_string
        if: has_field_audio_begin_turning_event
      - id: audio_stop_turning_event
        type: config_wwise_string
        if: has_field_audio_stop_turning_event
      - id: audio_begin_turning_event_around_x
        type: config_wwise_string
        if: has_field_audio_begin_turning_event_around_x
      - id: audio_stop_turning_event_around_x
        type: config_wwise_string
        if: has_field_audio_stop_turning_event_around_x
      - id: audio_begin_turning_event_around_y
        type: config_wwise_string
        if: has_field_audio_begin_turning_event_around_y
      - id: audio_stop_turning_event_around_y
        type: config_wwise_string
        if: has_field_audio_stop_turning_event_around_y
      - id: audio_begin_turning_event_around_z
        type: config_wwise_string
        if: has_field_audio_begin_turning_event_around_z
      - id: audio_stop_turning_event_around_z
        type: config_wwise_string
        if: has_field_audio_stop_turning_event_around_z
      - id: turn_state_map
        type: dict_of__aux_types__vlq_base128_le_u_config_gadget_turn_state
        if: has_field_turn_state_map
    instances:
      has_field_move_part_around_x: # Field №0
        value: (bit_field.value & 00000001) != 0
      has_field_anchor_part_around_x: # Field №1
        value: (bit_field.value & 00000010) != 0
      has_field_move_part_around_y: # Field №2
        value: (bit_field.value & 00000100) != 0
      has_field_anchor_part_around_y: # Field №3
        value: (bit_field.value & 00001000) != 0
      has_field_move_part_around_z: # Field №4
        value: (bit_field.value & 00010000) != 0
      has_field_anchor_part_around_z: # Field №5
        value: (bit_field.value & 00100000) != 0
      has_field_audio_begin_turning_event: # Field №6
        value: (bit_field.value & 01000000) != 0
      has_field_audio_stop_turning_event: # Field №7
        value: (bit_field.value & 0b000000010000000) != 0
      has_field_audio_begin_turning_event_around_x: # Field №8
        value: (bit_field.value & 0b000000100000000) != 0
      has_field_audio_stop_turning_event_around_x: # Field №9
        value: (bit_field.value & 0b000001000000000) != 0
      has_field_audio_begin_turning_event_around_y: # Field №10
        value: (bit_field.value & 0b000010000000000) != 0
      has_field_audio_stop_turning_event_around_y: # Field №11
        value: (bit_field.value & 0b000100000000000) != 0
      has_field_audio_begin_turning_event_around_z: # Field №12
        value: (bit_field.value & 0b001000000000000) != 0
      has_field_audio_stop_turning_event_around_z: # Field №13
        value: (bit_field.value & 0b010000000000000) != 0
      has_field_turn_state_map: # Field №14
        value: (bit_field.value & 0b100000000000000) != 0
