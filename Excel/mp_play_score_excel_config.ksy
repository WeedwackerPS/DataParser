meta:
  id: mp_play_score_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__mp_play_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: play_type
    type: enum__mp_play_type
    if: has_field_play_type
  - id: param
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_param
  - id: is_calc_score
    type: u1
    if: has_field_is_calc_score
instances:
  has_field_play_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_param: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_calc_score: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
