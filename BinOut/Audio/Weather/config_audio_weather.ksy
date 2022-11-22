meta:
  id: config_audio_weather
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../Common/audio_one_time_event
    - ../Common/voice_trigger_identity
    - ../../../DictType/dict_of__aux_types__string_aux_types__string
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../EnumType/enum__config_weather_type
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: transition_rtpc_key
    type: config_wwise_string
    if: has_field_transition_rtpc_key
  - id: dominant_state_name
    type: config_wwise_string
    if: has_field_dominant_state_name
  - id: dominant_switch_name
    type: config_wwise_string
    if: has_field_dominant_switch_name
  - id: dominant_rtpc_key
    type: config_wwise_string
    if: has_field_dominant_rtpc_key
  - id: dominant_state_name_without_delay
    type: config_wwise_string
    if: has_field_dominant_state_name_without_delay
  - id: dominant_rtpc_key_without_delay
    type: config_wwise_string
    if: has_field_dominant_rtpc_key_without_delay
  - id: time_of_day_rtpc_key
    type: config_wwise_string
    if: has_field_time_of_day_rtpc_key
  - id: avatar_speech_event
    type: config_wwise_string
    if: has_field_avatar_speech_event
  - id: weather_state_map
    type: dict_of__aux_types__string_audio_weather_properties
    if: has_field_weather_state_map
  - id: workset1
    type: audio_weather_work_set
    if: has_field_workset1
  - id: workset2
    type: audio_weather_work_set
    if: has_field_workset2
  - id: near_thunder_start
    type: audio_one_time_event
    if: has_field_near_thunder_start
  - id: near_thunder_end
    type: audio_one_time_event
    if: has_field_near_thunder_end
  - id: distant_thunder_start
    type: audio_one_time_event
    if: has_field_distant_thunder_start
  - id: distant_thunder_end
    type: audio_one_time_event
    if: has_field_distant_thunder_end
  - id: sky_thunder
    type: audio_one_time_event
    if: has_field_sky_thunder
  - id: workset_switch_key
    type: config_wwise_string
    if: has_field_workset_switch_key
  - id: wind_speed_rtpc_key
    type: config_wwise_string
    if: has_field_wind_speed_rtpc_key
  - id: climate_rtpc_key
    type: config_wwise_string
    if: has_field_climate_rtpc_key
  - id: climate_rtpc_map
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_climate_rtpc_map
  - id: weather_voice_triggers
    type: array_of__audio_weather_vo_trigger__length_u
    if: has_field_weather_voice_triggers
  - id: thunder_voice_trigger
    type: voice_trigger_identity
    if: has_field_thunder_voice_trigger
  - id: thunder_voice_cooldown
    type: aux_types::vlq_base128_le_u
    if: has_field_thunder_voice_cooldown
instances:
  has_field_transition_rtpc_key: # Field №0
    value: (bit_field.value & 0b00000000000000000000001) != 0
  has_field_dominant_state_name: # Field №1
    value: (bit_field.value & 0b00000000000000000000010) != 0
  has_field_dominant_switch_name: # Field №2
    value: (bit_field.value & 0b00000000000000000000100) != 0
  has_field_dominant_rtpc_key: # Field №3
    value: (bit_field.value & 0b00000000000000000001000) != 0
  has_field_dominant_state_name_without_delay: # Field №4
    value: (bit_field.value & 0b00000000000000000010000) != 0
  has_field_dominant_rtpc_key_without_delay: # Field №5
    value: (bit_field.value & 0b00000000000000000100000) != 0
  has_field_time_of_day_rtpc_key: # Field №6
    value: (bit_field.value & 0b00000000000000001000000) != 0
  has_field_avatar_speech_event: # Field №7
    value: (bit_field.value & 0b00000000000000010000000) != 0
  has_field_weather_state_map: # Field №8
    value: (bit_field.value & 0b00000000000000100000000) != 0
  has_field_workset1: # Field №9
    value: (bit_field.value & 0b00000000000001000000000) != 0
  has_field_workset2: # Field №10
    value: (bit_field.value & 0b00000000000010000000000) != 0
  has_field_near_thunder_start: # Field №11
    value: (bit_field.value & 0b00000000000100000000000) != 0
  has_field_near_thunder_end: # Field №12
    value: (bit_field.value & 0b00000000001000000000000) != 0
  has_field_distant_thunder_start: # Field №13
    value: (bit_field.value & 0b00000000010000000000000) != 0
  has_field_distant_thunder_end: # Field №14
    value: (bit_field.value & 0b00000000100000000000000) != 0
  has_field_sky_thunder: # Field №15
    value: (bit_field.value & 0b00000001000000000000000) != 0
  has_field_workset_switch_key: # Field №16
    value: (bit_field.value & 0b00000010000000000000000) != 0
  has_field_wind_speed_rtpc_key: # Field №17
    value: (bit_field.value & 0b00000100000000000000000) != 0
  has_field_climate_rtpc_key: # Field №18
    value: (bit_field.value & 0b00001000000000000000000) != 0
  has_field_climate_rtpc_map: # Field №19
    value: (bit_field.value & 0b00010000000000000000000) != 0
  has_field_weather_voice_triggers: # Field №20
    value: (bit_field.value & 0b00100000000000000000000) != 0
  has_field_thunder_voice_trigger: # Field №21
    value: (bit_field.value & 0b01000000000000000000000) != 0
  has_field_thunder_voice_cooldown: # Field №22
    value: (bit_field.value & 0b10000000000000000000000) != 0
types:
  dict_of__aux_types__string_audio_weather_properties:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_audio_weather_properties
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_audio_weather_properties:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: audio_weather_properties
  audio_weather_properties:
    seq:
      - id: bit_field
        type: u1
      - id: state_value
        type: config_wwise_string
        if: has_field_state_value
      - id: music_state_value
        type: config_wwise_string
        if: has_field_music_state_value
      - id: switch_value
        type: config_wwise_string
        if: has_field_switch_value
      - id: rtpc_value
        type: f4
        if: has_field_rtpc_value
      - id: surface_override
        type: aux_types::string
        if: has_field_surface_override
    instances:
      has_field_state_value: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_music_state_value: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_switch_value: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_rtpc_value: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_surface_override: # Field №4
        value: (bit_field & 0b10000) != 0
  audio_weather_work_set:
    seq:
      - id: bit_field
        type: u1
      - id: state_group_name
        type: config_wwise_string
        if: has_field_state_group_name
      - id: activeness_rtpc_name
        type: config_wwise_string
        if: has_field_activeness_rtpc_name
      - id: workset_switch_value
        type: config_wwise_string
        if: has_field_workset_switch_value
    instances:
      has_field_state_group_name: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_activeness_rtpc_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_workset_switch_value: # Field №2
        value: (bit_field & 0b100) != 0
  array_of__audio_weather_vo_trigger__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_weather_vo_trigger
        repeat: expr
        repeat-expr: length.value
  audio_weather_vo_trigger:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: weather_type_list
        type: array_of__enum__config_weather_type__length_u
        if: has_field_weather_type_list
      - id: weather_type_is_include
        type: u1
        if: has_field_weather_type_is_include
      - id: weather_list
        type: array_of__aux_types__string__length_u
        if: has_field_weather_list
      - id: weather_is_include
        type: u1
        if: has_field_weather_is_include
      - id: previous_weather_type_list
        type: array_of__enum__config_weather_type__length_u
        if: has_field_previous_weather_type_list
      - id: previous_weather_type_is_include
        type: u1
        if: has_field_previous_weather_type_is_include
      - id: previous_weather_list
        type: array_of__aux_types__string__length_u
        if: has_field_previous_weather_list
      - id: previous_weather_is_include
        type: u1
        if: has_field_previous_weather_is_include
      - id: vo_trigger
        type: voice_trigger_identity
        if: has_field_vo_trigger
      - id: time_limit
        type: array_of__audio_weather_vo_trigger_time_rule__length_u
        if: has_field_time_limit
    instances:
      has_field_weather_type_list: # Field №0
        value: (bit_field.value & 0b0000000001) != 0
      has_field_weather_type_is_include: # Field №1
        value: (bit_field.value & 0b0000000010) != 0
      has_field_weather_list: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_weather_is_include: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_previous_weather_type_list: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_previous_weather_type_is_include: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_previous_weather_list: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_previous_weather_is_include: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_vo_trigger: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_time_limit: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
  array_of__audio_weather_vo_trigger_time_rule__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_weather_vo_trigger_time_rule
        repeat: expr
        repeat-expr: length.value
  audio_weather_vo_trigger_time_rule:
    seq:
      - id: bit_field
        type: u1
      - id: from_
        type: f4
        if: has_field_from_
      - id: to
        type: f4
        if: has_field_to
    instances:
      has_field_from_: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_to: # Field №1
        value: (bit_field & 0b10) != 0
  array_of__enum__config_weather_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__config_weather_type
        repeat: expr
        repeat-expr: length.value
