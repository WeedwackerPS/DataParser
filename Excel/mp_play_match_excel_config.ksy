meta:
  id: mp_play_match_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__mp_play_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: play_type
    type: enum__mp_play_type
    if: has_field_play_type
  - id: play_name
    type: aux_types::vlq_base128_le_u
    if: has_field_play_name
  - id: play_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_play_desc
  - id: is_auto_match
    type: u1
    if: has_field_is_auto_match
  - id: min_players
    type: aux_types::vlq_base128_le_u
    if: has_field_min_players
  - id: max_players
    type: aux_types::vlq_base128_le_u
    if: has_field_max_players
  - id: is_allow_in_any_time
    type: u1
    if: has_field_is_allow_in_any_time
  - id: is_match_necessary
    type: u1
    if: has_field_is_match_necessary
  - id: buff_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_buff_list
  - id: push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_push_tips_id
  - id: bg_image
    type: aux_types::string
    if: has_field_bg_image
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_play_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_play_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_play_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_auto_match: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_min_players: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_max_players: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_allow_in_any_time: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_match_necessary: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_buff_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_push_tips_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_bg_image: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
