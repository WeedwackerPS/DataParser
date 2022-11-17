meta:
  id: loading_situation_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__loading_area_type
    - ../EnumType/enum__loading_tips_situation_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: stage_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_id
  - id: loading_situation_type
    type: enum__loading_tips_situation_type
    if: has_field_loading_situation_type
  - id: area1_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_area1_id
  - id: area_terrain_type
    type: enum__loading_area_type
    if: has_field_area_terrain_type
  - id: pic_path
    type: aux_types::string
    if: has_field_pic_path
instances:
  has_field_stage_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_loading_situation_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_area1_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_area_terrain_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_pic_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
