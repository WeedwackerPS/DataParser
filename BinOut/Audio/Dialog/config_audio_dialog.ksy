meta:
  id: config_audio_dialog
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../Common/array_of__audio_state_op__length_u
seq:
  - id: bit_field
    type: u1
  - id: reactions
    type: array_of__audio_dialog_reaction__length_u
    if: has_field_reactions
instances:
  has_field_reactions: # Field №0
    value: (bit_field & 0b1) != 0
types:
  array_of__audio_dialog_reaction__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_dialog_reaction
        repeat: expr
        repeat-expr: length.value
  audio_dialog_reaction:
    seq:
      - id: bit_field
        type: u1
      - id: dialog_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dialog_id
      - id: state_ops_on_start
        type: array_of__audio_state_op__length_u
        if: has_field_state_ops_on_start
      - id: state_ops_on_finish
        type: array_of__audio_state_op__length_u
        if: has_field_state_ops_on_finish
      - id: event_on_start
        type: config_wwise_string
        if: has_field_event_on_start
      - id: event_on_finish
        type: config_wwise_string
        if: has_field_event_on_finish
    instances:
      has_field_dialog_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_state_ops_on_start: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_state_ops_on_finish: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_event_on_start: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_event_on_finish: # Field №4
        value: (bit_field & 0b10000) != 0
