meta:
  id: config_audio_avatar
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: voice_switch_key
    type: config_wwise_string
    if: has_field_voice_switch_key
  - id: body_type_switch_key
    type: config_wwise_string
    if: has_field_body_type_switch_key
  - id: weapon_put_away_anim_state_whitelist
    type: array_of__aux_types__string__length_u
    if: has_field_weapon_put_away_anim_state_whitelist
  - id: energy_ratio_rtpc
    type: config_wwise_string
    if: has_field_energy_ratio_rtpc
  - id: team_hp_rtpc
    type: config_wwise_string
    if: has_field_team_hp_rtpc
  - id: team_hp_alive_ratio
    type: f4
    if: has_field_team_hp_alive_ratio
  - id: avatar_access_type_switch_group
    type: config_wwise_string
    if: has_field_avatar_access_type_switch_group
  - id: local_avatar_switch_value
    type: config_wwise_string
    if: has_field_local_avatar_switch_value
  - id: remote_avatar_switch_value
    type: config_wwise_string
    if: has_field_remote_avatar_switch_value
instances:
  has_field_voice_switch_key: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_body_type_switch_key: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_weapon_put_away_anim_state_whitelist: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_energy_ratio_rtpc: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_team_hp_rtpc: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_team_hp_alive_ratio: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_avatar_access_type_switch_group: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_local_avatar_switch_value: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_remote_avatar_switch_value: # Field №8
    value: (bit_field.value & 0b100000000) != 0
