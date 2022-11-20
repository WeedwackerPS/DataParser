meta:
  id: draft_text_data_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: draft_id
    type: aux_types::vlq_base128_le_u
    if: has_field_draft_id
  - id: draft_btn_name
    type: aux_types::string
    if: has_field_draft_btn_name
  - id: draft_btn_tips
    type: aux_types::string
    if: has_field_draft_btn_tips
  - id: requirement_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_requirement_desc
  - id: draft_limit_reason_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_draft_limit_reason_desc
  - id: limit_warning_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_warning_desc
  - id: invite_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_invite_desc
  - id: invite_guest_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_invite_guest_desc
  - id: invite_host_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_invite_host_desc
  - id: invite_warning_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_invite_warning_desc
  - id: draft_title
    type: aux_types::vlq_base128_le_u
    if: has_field_draft_title
instances:
  has_field_draft_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_draft_btn_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_draft_btn_tips: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_requirement_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_draft_limit_reason_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_limit_warning_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_invite_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_invite_guest_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_invite_host_desc: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_invite_warning_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_draft_title: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
