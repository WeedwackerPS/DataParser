meta:
  id: config_audio_general
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: pause_game_object_event
    type: config_wwise_string
    if: has_field_pause_game_object_event
  - id: resume_game_object_event
    type: config_wwise_string
    if: has_field_resume_game_object_event
  - id: pause_bus_event
    type: config_wwise_string
    if: has_field_pause_bus_event
  - id: resume_bus_event
    type: config_wwise_string
    if: has_field_resume_bus_event
  - id: stop_all_event
    type: config_wwise_string
    if: has_field_stop_all_event
instances:
  has_field_pause_game_object_event: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_resume_game_object_event: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_pause_bus_event: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_resume_bus_event: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_stop_all_event: # Field №4
    value: (bit_field & 0b10000) != 0
