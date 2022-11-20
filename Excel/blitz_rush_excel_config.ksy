meta:
  id: blitz_rush_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: content_duration
    type: aux_types::vlq_base128_le_u
    if: has_field_content_duration
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: dungeon_entry_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_entry_id
  - id: dungeon_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_reward_id
  - id: pre_pre_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pre_pre_quest_id
  - id: pre_quest_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_pre_quest_id
  - id: reward_preview
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview
  - id: hide_oath_entrance
    type: u1
    if: has_field_hide_oath_entrance
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_content_duration: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_dungeon_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_dungeon_entry_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_dungeon_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_pre_pre_quest_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_pre_quest_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_preview: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_hide_oath_entrance: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
