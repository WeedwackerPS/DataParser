meta:
  id: config_default_abilities
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: monter_elite_ability_name
    type: aux_types::string
    if: has_field_monter_elite_ability_name
  - id: non_humanoid_move_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_non_humanoid_move_abilities
  - id: level_default_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_level_default_abilities
  - id: level_element_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_level_element_abilities
  - id: level_item_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_level_item_abilities
  - id: level_s_buff_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_level_s_buff_abilities
  - id: dungeon_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_dungeon_abilities
  - id: default_team_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_default_team_abilities
  - id: default_mp_level_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_default_mp_level_abilities
  - id: default_avatar_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_default_avatar_abilities
instances:
  has_field_monter_elite_ability_name: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_non_humanoid_move_abilities: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_level_default_abilities: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_level_element_abilities: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_level_item_abilities: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_level_s_buff_abilities: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_dungeon_abilities: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_default_team_abilities: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_default_mp_level_abilities: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_default_avatar_abilities: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
