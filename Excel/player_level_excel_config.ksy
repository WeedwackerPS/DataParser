meta:
  id: player_level_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: max_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_max_exp
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: exp
    type: aux_types::vlq_base128_le_u
    if: has_field_exp
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: expedition_limit_add
    type: aux_types::vlq_base128_le_u
    if: has_field_expedition_limit_add
  - id: unlock_world_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_world_level
  - id: unlock_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_desc
instances:
  has_field_max_exp: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_exp: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_expedition_limit_add: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_unlock_world_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_unlock_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
