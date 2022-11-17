meta:
  id: activity_sumo_switch_skill_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: scheduld_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scheduld_id
  - id: ability_group_name
    type: aux_types::string
    if: has_field_ability_group_name
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: desc_param
    type: array_of__aux_types__string__length_u
    if: has_field_desc_param
  - id: icon_name_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_icon_name_hash
  - id: icon_name_hash_pre
    type: s1
    if: has_field_icon_name_hash
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_scheduld_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_ability_group_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc_param: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_icon_name_hash: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
