meta:
  id: trial_reliquary_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: reliquary_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reliquary_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: promote_level
    type: aux_types::vlq_base128_le_u
    if: has_field_promote_level
  - id: main_prop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_prop_id
  - id: append_prop_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_append_prop_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_reliquary_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_promote_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_main_prop_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_append_prop_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
