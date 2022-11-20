meta:
  id: expedition_difficulty_excel_config
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
  - id: need_hours
    type: aux_types::vlq_base128_le_u
    if: has_field_need_hours
  - id: min_player
    type: aux_types::vlq_base128_le_u
    if: has_field_min_player
  - id: max_player
    type: aux_types::vlq_base128_le_u
    if: has_field_max_player
  - id: min_refresh_count
    type: aux_types::vlq_base128_le_u
    if: has_field_min_refresh_count
  - id: max_refresh_count
    type: aux_types::vlq_base128_le_u
    if: has_field_max_refresh_count
  - id: coef
    type: f4
    if: has_field_coef
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_need_hours: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_min_player: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_max_player: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_min_refresh_count: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_max_refresh_count: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_coef: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
