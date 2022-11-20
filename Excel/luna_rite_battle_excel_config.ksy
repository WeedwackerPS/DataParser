meta:
  id: luna_rite_battle_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__luna_rite_region_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: region_type
    type: enum__luna_rite_region_type
    if: has_field_region_type
  - id: consecrate_id
    type: aux_types::vlq_base128_le_u
    if: has_field_consecrate_id
  - id: group_bundle_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_bundle_id
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: challenge_icon
    type: aux_types::string
    if: has_field_challenge_icon
  - id: monster_info
    type: aux_types::string
    if: has_field_monster_info
  - id: elite_monster_info
    type: aux_types::string
    if: has_field_elite_monster_info
  - id: ruler
    type: aux_types::vlq_base128_le_u
    if: has_field_ruler
  - id: recipe_source
    type: aux_types::vlq_base128_le_u
    if: has_field_recipe_source
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_region_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_consecrate_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_group_bundle_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_challenge_icon: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_monster_info: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_elite_monster_info: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_ruler: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_recipe_source: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
