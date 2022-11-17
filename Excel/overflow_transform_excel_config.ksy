meta:
  id: overflow_transform_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__item_limit_type
    - ../EnumType/enum__overflow_transform_type
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: transform_type
    type: enum__overflow_transform_type
    if: has_field_transform_type
  - id: transform_id
    type: aux_types::vlq_base128_le_u
    if: has_field_transform_id
  - id: transform_base_count
    type: aux_types::vlq_base128_le_u
    if: has_field_transform_base_count
  - id: transform_results
    type: array_of__id_count_config__length_s
    if: has_field_transform_results
  - id: transform_item_limit_type
    type: enum__item_limit_type
    if: has_field_transform_item_limit_type
instances:
  has_field_transform_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_transform_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_transform_base_count: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_transform_results: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_transform_item_limit_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
