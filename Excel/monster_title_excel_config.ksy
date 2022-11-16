meta:
  id: monster_title_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: title_id
    type: aux_types::vlq_base128_le_u
    if: has_field_title_id
  - id: title_name
    type: aux_types::vlq_base128_le_u
    if: has_field_title_name
  - id: is_inverted
    type: u1
    if: has_field_is_inverted
instances:
  has_field_title_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_title_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_inverted: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
