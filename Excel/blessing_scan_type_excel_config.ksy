meta:
  id: blessing_scan_type_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: type_id
    type: aux_types::vlq_base128_le_u
    if: has_field_type_id
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: up_pool_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_up_pool_id
  - id: daily_scan_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_scan_limit
  - id: type_name
    type: aux_types::vlq_base128_le_u
    if: has_field_type_name
  - id: type_name_with_color
    type: aux_types::vlq_base128_le_u
    if: has_field_type_name_with_color
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_priority: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_up_pool_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_daily_scan_limit: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_type_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_type_name_with_color: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
