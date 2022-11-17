meta:
  id: hunting_clue_monster_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__hunting_monster_group_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: monster_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_id
  - id: revise_level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level_id
  - id: group_type
    type: enum__hunting_monster_group_type
    if: has_field_group_type
  - id: monster_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_group_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: is_clue_monster
    type: u1
    if: has_field_is_clue_monster
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_monster_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_revise_level_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_group_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_monster_group_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_clue_monster: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
