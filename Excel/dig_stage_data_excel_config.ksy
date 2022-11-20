meta:
  id: dig_stage_data_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: stage_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_id
  - id: quest_unlock_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_unlock_id
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: stage_unlock_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_unlock_id
  - id: quest_title
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_title
  - id: quest_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_desc
  - id: push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_push_tips_id
  - id: unlock_time
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_time
instances:
  has_field_stage_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_quest_unlock_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_quest_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_stage_unlock_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_quest_title: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_quest_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_push_tips_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_unlock_time: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
