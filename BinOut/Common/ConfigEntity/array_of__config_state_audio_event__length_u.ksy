meta:
  id: array_of__config_state_audio_event__length_u
  endian: le
  license: GPLv2
  imports:
    - ../config_wwise_string
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../EnumType/enum__state_audio_event_usage
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_state_audio_event
    repeat: expr
    repeat-expr: length.value
types:
  config_state_audio_event:
    seq:
      - id: bit_field
        type: u1
      - id: current_state_name
        type: aux_types::string
        if: has_field_current_state_name
      - id: audio_event
        type: config_wwise_string
        if: has_field_audio_event
      - id: other_state_names
        type: array_of__aux_types__string__length_u
        if: has_field_other_state_names
      - id: usage
        type: enum__state_audio_event_usage
        if: has_field_usage
    instances:
      has_field_current_state_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_audio_event: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_other_state_names: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_usage: # Field №3
        value: (bit_field & 0b1000) != 0
