meta:
  id: config_entity_audio
  endian: le
  license: GPLv2
  imports:
    - ../config_wwise_string
    - array_of__config_state_audio_event__length_u
seq:
  - id: bit_field
    type: u1
  - id: anim_audio
    type: config_animation_audio
    if: has_field_anim_audio
  - id: init_event
    type: config_wwise_string
    if: has_field_init_event
  - id: enable_event
    type: config_wwise_string
    if: has_field_enable_event
  - id: disable_event
    type: config_wwise_string
    if: has_field_disable_event
  - id: destroy_event
    type: config_wwise_string
    if: has_field_destroy_event
instances:
  has_field_anim_audio: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_init_event: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_enable_event: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_disable_event: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_destroy_event: # Field №4
    value: (bit_field & 0b10000) != 0
types:
  config_animation_audio:
    seq:
      - id: bit_field
        type: u1
      - id: on_transition_in
        type: array_of__config_state_audio_event__length_u
        if: has_field_on_transition_in
      - id: on_transition_out
        type: array_of__config_state_audio_event__length_u
        if: has_field_on_transition_out
      - id: recurrent_speeches
        type: dict_of__aux_types__string_config_animation_recurrent_speech
        if: has_field_recurrent_speeches
    instances:
      has_field_on_transition_in: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_on_transition_out: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_recurrent_speeches: # Field №2
        value: (bit_field & 0b100) != 0
  dict_of__aux_types__string_config_animation_recurrent_speech:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_animation_recurrent_speech
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_animation_recurrent_speech:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_animation_recurrent_speech
  config_animation_recurrent_speech:
    seq:
      - id: bit_field
        type: u1
      - id: start
        type: config_fluctuated_value
        if: has_field_start
      - id: interval
        type: config_fluctuated_value
        if: has_field_interval
      - id: event_name
        type: config_wwise_string
        if: has_field_event_name
    instances:
      has_field_start: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_interval: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_event_name: # Field №2
        value: (bit_field & 0b100) != 0
  config_fluctuated_value:
    seq:
      - id: bit_field
        type: u1
      - id: upper
        type: f4
        if: has_field_upper
      - id: lower
        type: f4
        if: has_field_lower
    instances:
      has_field_upper: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_lower: # Field №1
        value: (bit_field & 0b10) != 0
