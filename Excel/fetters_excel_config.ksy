meta:
  id: fetters_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/array_of__fetter_condition_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: aux_types::vlq_base128_le_u
    if: has_field_type
  - id: is_hiden
    type: u1
    if: has_field_is_hiden
  - id: tips
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_tips
  - id: voice_title
    type: aux_types::vlq_base128_le_u
    if: has_field_voice_title
  - id: voice_file
    type: aux_types::string
    if: has_field_voice_file
  - id: voice_file_text
    type: aux_types::vlq_base128_le_u
    if: has_field_voice_file_text
  - id: voice_title_locked
    type: aux_types::vlq_base128_le_u
    if: has_field_voice_title_locked
  - id: fetter_id
    type: aux_types::vlq_base128_le_u
    if: has_field_fetter_id
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: open_conds
    type: array_of__fetter_condition_config__length_s
    if: has_field_open_conds
  - id: finish_conds
    type: array_of__fetter_condition_config__length_s
    if: has_field_finish_conds
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_is_hiden: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_tips: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_voice_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_voice_file: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_voice_file_text: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_voice_title_locked: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_fetter_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_avatar_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_open_conds: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_finish_conds: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
