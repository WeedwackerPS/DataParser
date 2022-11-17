meta:
  id: region_search_region_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__region_search_recycle_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: region_center
    type: array_of__f4__length_u
    if: has_field_region_center
  - id: region_radius
    type: f4
    if: has_field_region_radius
  - id: oneoff_group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_oneoff_group_list
  - id: oneoff_group_num
    type: aux_types::vlq_base128_le_u
    if: has_field_oneoff_group_num
  - id: recycle_group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_recycle_group_list
  - id: recycle_group_num
    type: aux_types::vlq_base128_le_u
    if: has_field_recycle_group_num
  - id: recycle_type
    type: enum__region_search_recycle_type
    if: has_field_recycle_type
  - id: recycle_param
    type: aux_types::vlq_base128_le_u
    if: has_field_recycle_param
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_region_center: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_region_radius: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_oneoff_group_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_oneoff_group_num: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_recycle_group_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_recycle_group_num: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_recycle_type: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_recycle_param: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
