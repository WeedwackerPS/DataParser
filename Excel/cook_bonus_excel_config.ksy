meta:
  id: cook_bonus_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__cook_bonus_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: recipe_id
    type: aux_types::vlq_base128_le_u
    if: has_field_recipe_id
  - id: bonus_type
    type: enum__cook_bonus_type
    if: has_field_bonus_type
  - id: param_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_param_vec
  - id: complex_param_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_complex_param_vec
instances:
  has_field_avatar_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_recipe_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_bonus_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_param_vec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_complex_param_vec: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
