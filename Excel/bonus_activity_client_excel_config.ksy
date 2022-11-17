meta:
  id: bonus_activity_client_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__bonus_activity_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: bonus_activity_type
    type: enum__bonus_activity_type
    if: has_field_bonus_activity_type
  - id: avatar_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_config_id
  - id: voice_index_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_voice_index_list
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: open_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_open_player_level
  - id: perfab_path
    type: aux_types::string
    if: has_field_perfab_path
  - id: unlock_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_tips
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_bonus_activity_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_avatar_config_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_voice_index_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_quest_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_open_player_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_perfab_path: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_unlock_tips: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
