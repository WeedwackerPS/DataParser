meta:
  id: reputation_explore_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: explore_id
    type: aux_types::vlq_base128_le_u
    if: has_field_explore_id
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: explore_progress
    type: aux_types::vlq_base128_le_u
    if: has_field_explore_progress
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: condition_text
    type: aux_types::vlq_base128_le_u
    if: has_field_condition_text
instances:
  has_field_explore_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_city_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_explore_progress: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_condition_text: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
