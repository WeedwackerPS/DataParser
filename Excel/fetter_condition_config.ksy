meta:
  id: fetter_condition_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__fetter_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: cond_type
    type: enum__fetter_cond_type
    if: has_field_cond_type
  - id: param_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_param_list
instances:
  has_field_cond_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_param_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
