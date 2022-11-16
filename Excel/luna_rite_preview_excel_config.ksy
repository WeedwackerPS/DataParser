meta:
  id: luna_rite_preview_excel_config
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
  - id: unlock_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_quest_id
  - id: unlock_quest_id2
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_quest_id2
  - id: unlock_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_player_level
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: activity_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_quest_id
  - id: guide_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_quest_id
  - id: challenge_push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_push_tips_id
  - id: plot_push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_plot_push_tips_id
  - id: plot_push_tips_pre_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_plot_push_tips_pre_quest_id
  - id: max_atmosphere
    type: aux_types::vlq_base128_le_u
    if: has_field_max_atmosphere
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_unlock_quest_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_unlock_quest_id2: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_unlock_player_level: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_activity_quest_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_guide_quest_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_challenge_push_tips_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_plot_push_tips_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_plot_push_tips_pre_quest_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_max_atmosphere: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
