meta:
  id: config_audio_map_info
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../Common/array_of__config_wwise_string__length_u
seq:
  - id: bit_field
    type: u1
  - id: area_state_key
    type: config_wwise_string
    if: has_field_area_state_key
  - id: areas
    type: array_of__config_audio_map_area__length_u
    if: has_field_areas
instances:
  has_field_area_state_key: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_areas: # Field №1
    value: (bit_field & 0b10) != 0
types:
  array_of__config_audio_map_area__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_audio_map_area
        repeat: expr
        repeat-expr: length.value
  config_audio_map_area:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: state_value
        type: config_wwise_string
        if: has_field_state_value
      - id: sub_state_group
        type: config_wwise_string
        if: has_field_sub_state_group
      - id: default_sub_state_value
        type: config_wwise_string
        if: has_field_default_sub_state_value
      - id: events_on_enter
        type: array_of__config_wwise_string__length_u
        if: has_field_events_on_enter
      - id: events_on_exit
        type: array_of__config_wwise_string__length_u
        if: has_field_events_on_exit
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_state_value: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_sub_state_group: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_default_sub_state_value: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_events_on_enter: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_events_on_exit: # Field №5
        value: (bit_field & 0b100000) != 0
