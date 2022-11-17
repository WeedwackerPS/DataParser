meta:
  id: monster_affix_excel_config
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
  - id: affix
    type: aux_types::string
    if: has_field_affix
  - id: comment
    type: aux_types::string
    if: has_field_comment
  - id: ability_name
    type: array_of__aux_types__string__length_u
    if: has_field_ability_name
  - id: is_common
    type: u1
    if: has_field_is_common
  - id: pre_add
    type: u1
    if: has_field_pre_add
  - id: is_legal
    type: aux_types::string
    if: has_field_is_legal
  - id: icon_path
    type: aux_types::string
    if: has_field_icon_path
  - id: radar_hint_id
    type: aux_types::vlq_base128_le_u
    if: has_field_radar_hint_id
  - id: general_skill_icon
    type: aux_types::string
    if: has_field_general_skill_icon
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_affix: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_comment: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_ability_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_common: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_pre_add: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_legal: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_icon_path: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_radar_hint_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_general_skill_icon: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
