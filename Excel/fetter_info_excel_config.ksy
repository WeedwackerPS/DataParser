meta:
  id: fetter_info_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__assoc_type
    - Common/array_of__fetter_condition_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: is_hiden
    type: u1
    if: has_field_is_hiden
  - id: info_birth_month
    type: aux_types::vlq_base128_le_u
    if: has_field_info_birth_month
  - id: info_birth_day
    type: aux_types::vlq_base128_le_u
    if: has_field_info_birth_day
  - id: avatar_native
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_native
  - id: avatar_vision_befor
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_vision_befor
  - id: avatar_constellation_befor
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_constellation_befor
  - id: avatar_title
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_title
  - id: avatar_detail
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_detail
  - id: avatar_assoc_type
    type: enum__assoc_type
    if: has_field_avatar_assoc_type
  - id: cv_chinese
    type: aux_types::vlq_base128_le_u
    if: has_field_cv_chinese
  - id: cv_japanese
    type: aux_types::vlq_base128_le_u
    if: has_field_cv_japanese
  - id: cv_english
    type: aux_types::vlq_base128_le_u
    if: has_field_cv_english
  - id: cv_korean
    type: aux_types::vlq_base128_le_u
    if: has_field_cv_korean
  - id: avatar_vision_after
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_vision_after
  - id: avatar_constellation_after
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_constellation_after
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
  has_field_is_hiden: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_info_birth_month: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_info_birth_day: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_avatar_native: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_avatar_vision_befor: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_avatar_constellation_befor: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_avatar_title: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_avatar_detail: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_avatar_assoc_type: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_cv_chinese: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_cv_japanese: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_cv_english: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_cv_korean: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_avatar_vision_after: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_avatar_constellation_after: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_fetter_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_avatar_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_open_conds: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_finish_conds: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
