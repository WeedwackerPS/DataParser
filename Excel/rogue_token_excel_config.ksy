meta:
  id: rogue_token_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__rogue_monster_pool_difficulty_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: stage_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: cell_type
    type: enum__rogue_monster_pool_difficulty_type
    if: has_field_cell_type
  - id: coin_a_num
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_coin_a_num
  - id: coin_b_num
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_coin_b_num
  - id: coin_c_num
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_coin_c_num
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_stage_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cell_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_coin_a_num: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_coin_b_num: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_coin_c_num: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
