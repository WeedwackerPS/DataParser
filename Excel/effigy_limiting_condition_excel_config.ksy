meta:
  id: effigy_limiting_condition_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__effigy_condition
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: condition_type
    type: enum__effigy_condition
    if: has_field_condition_type
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: condition_param1
    type: aux_types::vlq_base128_le_u
    if: has_field_condition_param1
  - id: condition_param2
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_condition_param2
  - id: exclusive_id
    type: aux_types::vlq_base128_le_u
    if: has_field_exclusive_id
  - id: is_in_row
    type: u1
    if: has_field_is_in_row
  - id: exclusive_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_exclusive_desc
  - id: score
    type: aux_types::vlq_base128_le_s
    if: has_field_score
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_condition_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_icon: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_condition_param1: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_condition_param2: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_exclusive_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_in_row: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_exclusive_desc: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_score: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
