meta:
  id: coop_cg_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__coop_cg_type
    - Common/array_of__coop_cond_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: chapter_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_id
  - id: unlock_point_id
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_point_id
  - id: cg_type
    type: enum__coop_cg_type
    if: has_field_cg_type
  - id: unlock_cond
    type: array_of__coop_cond_config__length_s
    if: has_field_unlock_cond
  - id: show_image_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_show_image_hash
  - id: show_image_hash_pre
    type: s1
    if: has_field_show_image_hash
  - id: show_image_small_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_show_image_small_hash
  - id: show_image_small_hash_pre
    type: s1
    if: has_field_show_image_small_hash
  - id: cg_name
    type: aux_types::vlq_base128_le_u
    if: has_field_cg_name
  - id: cg_des
    type: aux_types::vlq_base128_le_u
    if: has_field_cg_des
  - id: sort_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_chapter_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_unlock_point_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cg_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_unlock_cond: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_show_image_hash: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_show_image_small_hash: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_cg_name: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cg_des: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_sort_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
