meta:
  id: fetter_character_card_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: fetter_level
    type: aux_types::vlq_base128_le_u
    if: has_field_fetter_level
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
instances:
  has_field_avatar_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_fetter_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
