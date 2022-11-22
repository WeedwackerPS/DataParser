meta:
  id: config_audio_base_move
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../EnumType/enum__audio_platform_move_type
seq:
  - id: bit_field
    type: u1
  - id: move_rtpc_key
    type: config_wwise_string
    if: has_field_move_rtpc_key
  - id: platform_settings
    type: array_of__audio_platform_move_settings__length_u
    if: has_field_platform_settings
  - id: platform_setting_usage_mapping
    type: array_of__audio_platform_move_settings_usage_pair__length_u
    if: has_field_platform_setting_usage_mapping
instances:
  has_field_move_rtpc_key: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_platform_settings: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_platform_setting_usage_mapping: # Field №2
    value: (bit_field & 0b100) != 0
types:
  array_of__audio_platform_move_settings__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_platform_move_settings
        repeat: expr
        repeat-expr: length.value
  audio_platform_move_settings:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: move_type
        type: enum__audio_platform_move_type
        if: has_field_move_type
      - id: move_start_event
        type: config_wwise_string
        if: has_field_move_start_event
      - id: move_stop_event
        type: config_wwise_string
        if: has_field_move_stop_event
      - id: rotate_start_event
        type: config_wwise_string
        if: has_field_rotate_start_event
      - id: rotate_stop_event
        type: config_wwise_string
        if: has_field_rotate_stop_event
      - id: linear_velocity_threshold
        type: f4
        if: has_field_linear_velocity_threshold
      - id: angular_velocity_threshold
        type: f4
        if: has_field_angular_velocity_threshold
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_move_type: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_move_start_event: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_move_stop_event: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_rotate_start_event: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_rotate_stop_event: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_linear_velocity_threshold: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_angular_velocity_threshold: # Field №7
        value: (bit_field & 0b10000000) != 0

  array_of__audio_platform_move_settings_usage_pair__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_platform_move_settings_usage_pair
        repeat: expr
        repeat-expr: length.value
  audio_platform_move_settings_usage_pair:
    seq:
      - id: bit_field
        type: u1
      - id: entity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_entity_id
      - id: settings_id
        type: aux_types::vlq_base128_le_u
        if: has_field_settings_id
    instances:
      has_field_entity_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_settings_id: # Field №1
        value: (bit_field & 0b10) != 0
