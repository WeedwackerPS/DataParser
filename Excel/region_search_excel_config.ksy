meta:
  id: region_search_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__region_search_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: search_name
    type: aux_types::vlq_base128_le_u
    if: has_field_search_name
  - id: search_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_search_desc
  - id: search_complete
    type: aux_types::vlq_base128_le_u
    if: has_field_search_complete
  - id: tutorial_id
    type: aux_types::vlq_base128_le_u
    if: has_field_tutorial_id
  - id: mark_icon_type_name
    type: aux_types::string
    if: has_field_mark_icon_type_name
  - id: search_type
    type: enum__region_search_type
    if: has_field_search_type
  - id: material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_material_id
  - id: is_clear_material
    type: u1
    if: has_field_is_clear_material
  - id: search_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_search_group_id
  - id: revise_level
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level
  - id: ability_group
    type: aux_types::string
    if: has_field_ability_group
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_search_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_search_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_search_complete: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_tutorial_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_mark_icon_type_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_search_type: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_material_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_clear_material: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_search_group_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_revise_level: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_ability_group: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
