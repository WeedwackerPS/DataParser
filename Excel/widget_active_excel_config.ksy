meta:
  id: widget_active_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_material_id
  - id: is_guest_can_activate
    type: u1
    if: has_field_is_guest_can_activate
  - id: active_gallery
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_active_gallery
  - id: active_region
    type: aux_types::string
    if: has_field_active_region
instances:
  has_field_material_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_is_guest_can_activate: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_active_gallery: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_active_region: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
