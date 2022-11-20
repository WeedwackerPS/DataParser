meta:
  id: mail_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: expire_days
    type: aux_types::vlq_base128_le_u
    if: has_field_expire_days
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: content
    type: aux_types::vlq_base128_le_u
    if: has_field_content
  - id: sender
    type: aux_types::vlq_base128_le_u
    if: has_field_sender
  - id: is_star
    type: u1
    if: has_field_is_star
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_expire_days: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_title: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_content: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_sender: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_star: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_reward_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
