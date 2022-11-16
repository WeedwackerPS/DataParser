meta:
  id: fleur_fair_preview_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: activity_stay_time
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_stay_time
  - id: unlock_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_quest_id
  - id: unlock_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_player_level
  - id: gameplay_pre_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_gameplay_pre_quest
  - id: reward_preview
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_activity_stay_time: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_unlock_quest_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_unlock_player_level: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_gameplay_pre_quest: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_reward_preview: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
