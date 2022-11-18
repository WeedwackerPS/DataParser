meta:
  id: coop_reward_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - Common/array_of__coop_cond_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: reward_cond
    type: array_of__coop_cond_config__length_s
    if: has_field_reward_cond
  - id: chapter_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_id
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: sort_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_id
  - id: cond_tip
    type: aux_types::vlq_base128_le_u
    if: has_field_cond_tip
  - id: cond_tip_des
    type: aux_types::vlq_base128_le_u
    if: has_field_cond_tip_des
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_reward_cond: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_chapter_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_sort_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cond_tip: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cond_tip_des: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
