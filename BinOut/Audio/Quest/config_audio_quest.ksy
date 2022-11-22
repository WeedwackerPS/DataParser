meta:
  id: config_audio_quest
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../Common/array_of__config_wwise_string__length_u
    - ../Common/array_of__audio_state_op__length_u
seq:
  - id: bit_field
    type: u1
  - id: quests
    type: array_of__config_audio_quest_ops__length_u
    if: has_field_quests
instances:
  has_field_quests: # Field №0
    value: (bit_field & 0b1) != 0
types:
  array_of__config_audio_quest_ops__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_audio_quest_ops
        repeat: expr
        repeat-expr: length.value
  config_audio_quest_ops:
    seq:
      - id: bit_field
        type: u1
      - id: quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_id
      - id: events_on_start
        type: array_of__config_wwise_string__length_u
        if: has_field_events_on_start
      - id: states_on_start
        type: array_of__audio_state_op__length_u
        if: has_field_states_on_start
      - id: events_on_finish
        type: array_of__config_wwise_string__length_u
        if: has_field_events_on_finish
      - id: states_on_finish
        type: array_of__audio_state_op__length_u
        if: has_field_states_on_finish
    instances:
      has_field_quest_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_events_on_start: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_states_on_start: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_events_on_finish: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_states_on_finish: # Field №4
        value: (bit_field & 0b10000) != 0
