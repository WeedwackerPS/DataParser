meta:
  id: document_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__document_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: content_localized_id
    type: aux_types::vlq_base128_le_u
    if: has_field_content_localized_id
  - id: preview_path
    type: aux_types::string
    if: has_field_preview_path
  - id: document_type
    type: enum__document_type
    if: has_field_document_type
  - id: video_path
    type: aux_types::string
    if: has_field_video_path
  - id: subtitle_id
    type: aux_types::vlq_base128_le_u
    if: has_field_subtitle_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_title: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_content_localized_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_preview_path: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_document_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_video_path: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_subtitle_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
