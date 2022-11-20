meta:
  id: widget_camera_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: hint_distance
    type: f4
    if: has_field_hint_distance
  - id: ui_path
    type: aux_types::string
    if: has_field_ui_path
  - id: tips
    type: aux_types::vlq_base128_le_u
    if: has_field_tips
  - id: scan_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_scan_tips
  - id: scan_success_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_scan_success_desc
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_hint_distance: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_ui_path: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_tips: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_scan_tips: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_scan_success_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
