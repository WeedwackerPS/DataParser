meta:
  id: hide_and_seek_match_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/match_cond
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: unlock_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_tips
  - id: dsc
    type: aux_types::vlq_base128_le_u
    if: has_field_dsc
  - id: map_icon_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_map_icon_path_hash
  - id: map_icon_path_hash_pre
    type: s1
    if: has_field_map_icon_path_hash
  - id: map_small_icon_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_map_small_icon_path_hash
  - id: map_small_icon_path_hash_pre
    type: s1
    if: has_field_map_small_icon_path_hash
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: transport_point_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_transport_point_list
  - id: duration_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_duration_list
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: cond
    type: array_of__match_cond__length_s
    if: has_field_cond
instances:
  has_field_title: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_unlock_tips: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_dsc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_map_icon_path_hash: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_map_small_icon_path_hash: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_group_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_transport_point_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_duration_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_gallery_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_cond: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
types:
  array_of__match_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: match_cond
        repeat: expr
        repeat-expr: length.value
