meta:
  id: mechanicus_card_effect_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__mechanicus_card_effect_type
    - ../EnumType/enum__mechanicus_card_target_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: target_type
    type: enum__mechanicus_card_target_type
    if: has_field_target_type
  - id: target_param_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_target_param_list
  - id: effect_type
    type: enum__mechanicus_card_effect_type
    if: has_field_effect_type
  - id: effect_str_param
    type: aux_types::string
    if: has_field_effect_str_param
  - id: effect_param1
    type: aux_types::vlq_base128_le_s
    if: has_field_effect_param1
  - id: effect_param2
    type: aux_types::vlq_base128_le_s
    if: has_field_effect_param2
  - id: effect_param3
    type: aux_types::vlq_base128_le_s
    if: has_field_effect_param3
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_target_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_target_param_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_effect_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_effect_str_param: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_effect_param1: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_effect_param2: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_effect_param3: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
