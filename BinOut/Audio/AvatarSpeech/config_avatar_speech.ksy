meta:
  id: config_avatar_speech
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../DictType/dict_of__aux_types__string_aux_types__string
    - ../../../EnumType/enum__voice_personality
    - ../../../EnumType/enum__voice_positioning
    - ../Common/voice_trigger_identity
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: suitable_equip_obtain
    type: array_of__avatar_speech_equip_obtain__length_u
    if: has_field_suitable_equip_obtain
  - id: unsuitable_equip_obtain
    type: array_of__avatar_speech_equip_obtain__length_u
    if: has_field_unsuitable_equip_obtain
  - id: event_common_prefix
    type: aux_types::string
    if: has_field_event_common_prefix
  - id: external_voice_event
    type: config_wwise_string
    if: has_field_external_voice_event
  - id: person_switch_key
    type: config_wwise_string
    if: has_field_person_switch_key
  - id: positioning_switch_key
    type: config_wwise_string
    if: has_field_positioning_switch_key
  - id: initial_delay_rtpc
    type: config_wwise_string
    if: has_field_initial_delay_rtpc
  - id: person_switch_value_map
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_person_switch_value_map
  - id: positioning_switch_value_map
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_positioning_switch_value_map
  - id: external_sound_names
    type: array_of__voice_sound__length_u
    if: has_field_external_sound_names
  - id: default_narration_interval
    type: f4
    if: has_field_default_narration_interval
  - id: default_narration_duration
    type: f4
    if: has_field_default_narration_duration
  - id: gacha_voice_trigger_param
    type: aux_types::vlq_base128_le_u
    if: has_field_gacha_voice_trigger_param
  - id: join_team_voice_trigger_param
    type: aux_types::vlq_base128_le_u
    if: has_field_join_team_voice_trigger_param
  - id: fetter_voice_trigger_map
    type: dict_of__aux_types__vlq_base128_le_u_voice_trigger_identity
    if: has_field_fetter_voice_trigger_map
  - id: teammate_low_hp_vo_hp_ratio
    type: f4
    if: has_field_teammate_low_hp_vo_hp_ratio
  - id: teammate_low_hp_vo_cooldown
    type: aux_types::vlq_base128_le_u
    if: has_field_teammate_low_hp_vo_cooldown
  - id: teammate_low_hp_vo_vo_trigger
    type: voice_trigger_identity
    if: has_field_teammate_low_hp_vo_vo_trigger
  - id: local_player_low_hp_vo_hp_ratio
    type: f4
    if: has_field_local_player_low_hp_vo_hp_ratio
  - id: local_player_low_hp_vo_cooldown
    type: aux_types::vlq_base128_le_u
    if: has_field_local_player_low_hp_vo_cooldown
  - id: local_player_low_hp_vo_vo_trigger
    type: voice_trigger_identity
    if: has_field_local_player_low_hp_vo_vo_trigger
  - id: promotion_voice_trigger_map
    type: dict_of__aux_types__vlq_base128_le_u_voice_trigger_identity
    if: has_field_promotion_voice_trigger_map
  - id: open_chest_vo_trigger
    type: voice_trigger_identity
    if: has_field_open_chest_vo_trigger
instances:
  has_field_suitable_equip_obtain: # Field №0
    value: (bit_field.value & 0b00000000000000000000001) != 0
  has_field_unsuitable_equip_obtain: # Field №1
    value: (bit_field.value & 0b00000000000000000000010) != 0
  has_field_event_common_prefix: # Field №2
    value: (bit_field.value & 0b00000000000000000000100) != 0
  has_field_external_voice_event: # Field №3
    value: (bit_field.value & 0b00000000000000000001000) != 0
  has_field_person_switch_key: # Field №4
    value: (bit_field.value & 0b00000000000000000010000) != 0
  has_field_positioning_switch_key: # Field №5
    value: (bit_field.value & 0b00000000000000000100000) != 0
  has_field_initial_delay_rtpc: # Field №6
    value: (bit_field.value & 0b00000000000000001000000) != 0
  has_field_person_switch_value_map: # Field №7
    value: (bit_field.value & 0b00000000000000010000000) != 0
  has_field_positioning_switch_value_map: # Field №8
    value: (bit_field.value & 0b00000000000000100000000) != 0
  has_field_external_sound_names: # Field №9
    value: (bit_field.value & 0b00000000000001000000000) != 0
  has_field_default_narration_interval: # Field №10
    value: (bit_field.value & 0b00000000000010000000000) != 0
  has_field_default_narration_duration: # Field №11
    value: (bit_field.value & 0b00000000000100000000000) != 0
  has_field_gacha_voice_trigger_param: # Field №12
    value: (bit_field.value & 0b00000000001000000000000) != 0
  has_field_join_team_voice_trigger_param: # Field №13
    value: (bit_field.value & 0b00000000010000000000000) != 0
  has_field_fetter_voice_trigger_map: # Field №14
    value: (bit_field.value & 0b00000000100000000000000) != 0
  has_field_teammate_low_hp_vo_hp_ratio: # Field №15
    value: (bit_field.value & 0b00000001000000000000000) != 0
  has_field_teammate_low_hp_vo_cooldown: # Field №16
    value: (bit_field.value & 0b00000010000000000000000) != 0
  has_field_teammate_low_hp_vo_vo_trigger: # Field №17
    value: (bit_field.value & 0b00000100000000000000000) != 0
  has_field_local_player_low_hp_vo_hp_ratio: # Field №18
    value: (bit_field.value & 0b00001000000000000000000) != 0
  has_field_local_player_low_hp_vo_cooldown: # Field №19
    value: (bit_field.value & 0b00010000000000000000000) != 0
  has_field_local_player_low_hp_vo_vo_trigger: # Field №20
    value: (bit_field.value & 0b00100000000000000000000) != 0
  has_field_promotion_voice_trigger_map: # Field №21
    value: (bit_field.value & 0b01000000000000000000000) != 0
  has_field_open_chest_vo_trigger: # Field №22
    value: (bit_field.value & 0b10000000000000000000000) != 0
types:
  array_of__avatar_speech_equip_obtain__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: avatar_speech_equip_obtain
        repeat: expr
        repeat-expr: length.value
  avatar_speech_equip_obtain:
    seq:
      - id: bit_field
        type: u1
      - id: quality
        type: aux_types::vlq_base128_le_s
        if: has_field_quality
      - id: event_name
        type: config_wwise_string
        if: has_field_event_name
    instances:
      has_field_quality: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_event_name: # Field №1
        value: (bit_field & 0b10) != 0
  array_of__voice_sound__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: voice_sound
        repeat: expr
        repeat-expr: length.value
  voice_sound:
    seq:
      - id: bit_field
        type: u1
      - id: personality
        type: enum__voice_personality
        if: has_field_personality
      - id: positioning
        type: enum__voice_positioning
        if: has_field_positioning
      - id: sound_name
        type: config_wwise_string
        if: has_field_sound_name
    instances:
      has_field_personality: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_positioning: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_sound_name: # Field №2
        value: (bit_field & 0b100) != 0
  dict_of__aux_types__vlq_base128_le_u_voice_trigger_identity:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_voice_trigger_identity
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_voice_trigger_identity:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: voice_trigger_identity
