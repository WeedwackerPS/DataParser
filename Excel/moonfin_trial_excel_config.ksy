meta:
  id: moonfin_trial_excel_config
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
  - id: level_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_level_id_list
  - id: activity_fish_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_fish_id
  - id: activity_fish_gain_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_fish_gain_limit
  - id: activity_fish_pool_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_fish_pool_id
  - id: activity_reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_reward_preview_id
  - id: push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_push_tips_id
  - id: main_quest_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_main_quest_list
  - id: precondition_main_quest_ids
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_precondition_main_quest_ids
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_activity_fish_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_activity_fish_gain_limit: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_activity_fish_pool_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_activity_reward_preview_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_push_tips_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_main_quest_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_precondition_main_quest_ids: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
