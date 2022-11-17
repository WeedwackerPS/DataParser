meta:
  id: activity_summer_time_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: unlock_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_quest_id
  - id: content_duration
    type: aux_types::vlq_base128_le_u
    if: has_field_content_duration
  - id: unlock_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_player_level
  - id: personal_pre_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_personal_pre_quest
  - id: pre_quest_of_pre_quest
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_pre_quest_of_pre_quest
  - id: reward_preview
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview
  - id: quest_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_quest_id_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_unlock_quest_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_content_duration: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_unlock_player_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_personal_pre_quest: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_pre_quest_of_pre_quest: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_reward_preview: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_quest_id_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
