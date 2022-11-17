meta:
  id: group_links_bundle_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__activity_group_link_reward_type
    - ../EnumType/enum__activity_group_link_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: link_type
    type: enum__activity_group_link_type
    if: has_field_link_type
  - id: group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_group_list
  - id: hint_group
    type: aux_types::vlq_base128_le_u
    if: has_field_hint_group
  - id: hint_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_hint_radius
  - id: reward_type
    type: enum__activity_group_link_reward_type
    if: has_field_reward_type
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: revise_level
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: tips
    type: aux_types::vlq_base128_le_u
    if: has_field_tips
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_link_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_group_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_hint_group: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_hint_radius: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_reward_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_revise_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_icon: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_name: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_tips: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
