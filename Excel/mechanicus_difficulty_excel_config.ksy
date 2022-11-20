meta:
  id: mechanicus_difficulty_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: dungeon_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_dungeon_list
  - id: coin_rate
    type: aux_types::vlq_base128_le_u
    if: has_field_coin_rate
  - id: build_gear_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_build_gear_limit
instances:
  has_field_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_dungeon_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_coin_rate: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_build_gear_limit: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
