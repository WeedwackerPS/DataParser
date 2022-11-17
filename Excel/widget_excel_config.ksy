meta:
  id: widget_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_material_id
  - id: show_redpoint
    type: u1
    if: has_field_show_redpoint
  - id: customize_desc
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_customize_desc
  - id: push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_push_tips_id
instances:
  has_field_material_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_show_redpoint: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_customize_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_push_tips_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
