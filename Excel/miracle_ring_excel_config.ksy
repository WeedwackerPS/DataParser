meta:
  id: miracle_ring_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__miracle_tag
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: miracle_value
    type: aux_types::vlq_base128_le_u
    if: has_field_miracle_value
  - id: miracle_tag
    type: array_of__enum__miracle_tag__length_s
    if: has_field_miracle_tag
instances:
  has_field_item_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_miracle_value: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_miracle_tag: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
types:
  array_of__enum__miracle_tag__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: enum__miracle_tag
        repeat: expr
        repeat-expr: length.value
