meta:
  id: expedition_challenge_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: unlock_time
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_time
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: reward_challenge_index
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_challenge_index
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: challenge_name
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_name
  - id: challenge_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_desc
  - id: super_element
    type: aux_types::string
    if: has_field_super_element
  - id: center_pos_list
    type: array_of__f4__length_u
    if: has_field_center_pos_list
  - id: center_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_center_radius
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_unlock_time: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_group_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_challenge_index: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_challenge_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_challenge_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_super_element: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_center_pos_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_center_radius: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
