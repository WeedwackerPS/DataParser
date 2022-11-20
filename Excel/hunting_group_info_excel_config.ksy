meta:
  id: hunting_group_info_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__hunting_clue_point_type
    - ../EnumType/enum__hunting_monster_create_pos_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: region_id
    type: aux_types::vlq_base128_le_u
    if: has_field_region_id
  - id: point_type
    type: enum__hunting_clue_point_type
    if: has_field_point_type
  - id: ref_index
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_ref_index
  - id: pos_type
    type: enum__hunting_monster_create_pos_type
    if: has_field_pos_type
instances:
  has_field_group_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_region_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_point_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_ref_index: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_pos_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
