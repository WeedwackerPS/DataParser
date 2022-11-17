meta:
  id: hide_and_seek_skill_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__hide_and_seek_skill_category
    - ../EnumType/enum__hide_and_seek_skill_sub_category
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: challenge_id
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_id
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: order
    type: aux_types::vlq_base128_le_u
    if: has_field_order
  - id: skill_category
    type: enum__hide_and_seek_skill_category
    if: has_field_skill_category
  - id: skill_sub_category
    type: enum__hide_and_seek_skill_sub_category
    if: has_field_skill_sub_category
  - id: is_default
    type: u1
    if: has_field_is_default
  - id: category_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_category_desc
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_challenge_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_skill_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_order: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_skill_category: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_skill_sub_category: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_default: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_category_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
