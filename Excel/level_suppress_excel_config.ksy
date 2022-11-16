meta:
  id: level_suppress_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level
    type: aux_types::vlq_base128_le_s
    if: has_field_level
  - id: level_suppress_damage_co
    type: f4
    if: has_field_level_suppress_damage_co
  - id: level_suppress_endure
    type: f4
    if: has_field_level_suppress_endure
  - id: level_suppress_dis_min_horizontal
    type: f4
    if: has_field_level_suppress_dis_min_horizontal
  - id: level_suppress_dis_max_horizontal
    type: f4
    if: has_field_level_suppress_dis_max_horizontal
  - id: level_suppress_dis_min_vertical
    type: f4
    if: has_field_level_suppress_dis_min_vertical
  - id: level_suppress_dis_max_vertical
    type: f4
    if: has_field_level_suppress_dis_max_vertical
  - id: is_attacker_player
    type: u1
    if: has_field_is_attacker_player
  - id: is_defenser_player
    type: u1
    if: has_field_is_defenser_player
instances:
  has_field_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level_suppress_damage_co: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level_suppress_endure: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_level_suppress_dis_min_horizontal: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_level_suppress_dis_max_horizontal: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_level_suppress_dis_min_vertical: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_level_suppress_dis_max_vertical: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_attacker_player: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_defenser_player: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
