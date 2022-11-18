meta:
  id: match_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__match_sub_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: match_sub_type
    type: enum__match_sub_type
    if: has_field_match_sub_type
  - id: min_player_num
    type: aux_types::vlq_base128_le_u
    if: has_field_min_player_num
  - id: max_player_num
    type: aux_types::vlq_base128_le_u
    if: has_field_max_player_num
  - id: confirm_time
    type: aux_types::vlq_base128_le_u
    if: has_field_confirm_time
  - id: is_continue_match
    type: u1
    if: has_field_is_continue_match
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_match_sub_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_min_player_num: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_max_player_num: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_confirm_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_continue_match: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
