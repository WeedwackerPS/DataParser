meta:
  id: activity_arena_challenge_preview_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: center_pos_list
    type: array_of__f4__length_u
    if: has_field_center_pos_list
  - id: guide_main_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_main_quest_id
  - id: guide_side_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_side_quest_id
  - id: guide_quest_id1
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_quest_id1
instances:
  has_field_schedule_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_reward_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_center_pos_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_guide_main_quest_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_guide_side_quest_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_guide_quest_id1: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
