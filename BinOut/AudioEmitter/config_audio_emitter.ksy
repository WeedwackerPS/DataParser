meta:
  id: config_audio_emitter
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../Common/config_wwise_string
    - ../../EnumType/enum__audio_emitter_multi_position_type
seq:
  - id: bit_field
    type: u1
  - id: emitter_lifetime
    type: f4
    if: has_field_emitter_lifetime
  - id: emit_interval
    type: f4
    if: has_field_emit_interval
  - id: inst_lifetime
    type: f4
    if: has_field_inst_lifetime
  - id: ending_duration
    type: f4
    if: has_field_ending_duration
  - id: emit_event_name
    type: config_wwise_string
    if: has_field_emit_event_name
  - id: end_event_name
    type: config_wwise_string
    if: has_field_end_event_name
  - id: multi_position_type
    type: enum__audio_emitter_multi_position_type
    if: has_field_multi_position_type
instances:
  has_field_emitter_lifetime: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_emit_interval: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_inst_lifetime: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_ending_duration: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_emit_event_name: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_end_event_name: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_multi_position_type: # Field №6
    value: (bit_field & 0b1000000) != 0
