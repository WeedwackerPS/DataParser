meta:
  id: matching_text_data_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: match_id
    type: aux_types::vlq_base128_le_u
    if: has_field_match_id
  - id: match_icon_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_match_icon_hash
  - id: match_icon_hash_pre
    type: s1
    if: has_field_match_icon_hash
  - id: match_btn_name
    type: aux_types::string
    if: has_field_match_btn_name
  - id: match_btn_tips
    type: aux_types::string
    if: has_field_match_btn_tips
  - id: requirement_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_requirement_desc
  - id: match_limit_reason_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_match_limit_reason_desc
  - id: limit_warning_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_warning_desc
  - id: invite_guest_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_invite_guest_desc
  - id: invite_host_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_invite_host_desc
  - id: match_start_desc
    type: aux_types::string
    if: has_field_match_start_desc
  - id: match_title
    type: aux_types::vlq_base128_le_u
    if: has_field_match_title
  - id: match_success_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_match_success_desc
instances:
  has_field_match_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_match_icon_hash: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_match_btn_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_match_btn_tips: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_requirement_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_match_limit_reason_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_limit_warning_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_invite_guest_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_invite_host_desc: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_match_start_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_match_title: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_match_success_desc: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
