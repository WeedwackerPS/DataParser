meta:
  id: miracle_ring_drop_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__miracle_tag
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: miracle_tag
    type: enum__miracle_tag
    if: has_field_miracle_tag
  - id: drop_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_drop_id
instances:
  has_field_miracle_tag: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_drop_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
