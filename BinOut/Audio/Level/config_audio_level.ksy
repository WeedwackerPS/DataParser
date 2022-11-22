meta:
  id: config_audio_level
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../Common/dict_of__aux_types__string_config_wwise_string
    - ../../Common/array_of__config_wwise_string__length_u
seq:
  - id: bit_field
    type: u1
  - id: teleport_events
    type: array_of__config_wwise_string__length_u
    if: has_field_teleport_events
  - id: state_group
    type: config_wwise_string
    if: has_field_state_group
  - id: dungeon_event_map
    type: dict_of__aux_types__string_config_wwise_string
    if: has_field_dungeon_event_map
instances:
  has_field_teleport_events: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_state_group: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_dungeon_event_map: # Field №2
    value: (bit_field & 0b100) != 0
