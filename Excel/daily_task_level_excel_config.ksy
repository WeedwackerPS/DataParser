meta:
  id: daily_task_level_excel_config
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
  - id: min_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_min_player_level
  - id: max_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_player_level
  - id: group_revise_level
    type: aux_types::vlq_base128_le_u
    if: has_field_group_revise_level
  - id: score_drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_score_drop_id
  - id: score_preview_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_score_preview_reward_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_min_player_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_max_player_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_group_revise_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_score_drop_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_score_preview_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
