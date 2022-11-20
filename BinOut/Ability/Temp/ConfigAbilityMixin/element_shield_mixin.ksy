meta:
  id: element_shield_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__element_type
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
  - id: show_damage_text
    type: aux_types::string
    if: has_field_show_damage_text
  - id: shield_angle
    type: aux_types::dynamic_float
    if: has_field_shield_angle
  - id: shield_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_shield_hp_ratio
  - id: shield_hp
    type: aux_types::dynamic_float
    if: has_field_shield_hp
  - id: damage_ratio
    type: aux_types::dynamic_float
    if: has_field_damage_ratio
  - id: on_shield_broken
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_shield_broken
  - id: on_shield_success
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_shield_success
  - id: on_shield_failed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_shield_failed
  - id: use_muti_player_fix_data
    type: u1
    if: has_field_use_muti_player_fix_data
  - id: update_shield_by_max_hp
    type: u1
    if: has_field_update_shield_by_max_hp
instances:
  has_field_element_type: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_show_damage_text: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_shield_angle: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_shield_hp_ratio: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_shield_hp: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_damage_ratio: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_on_shield_broken: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_on_shield_success: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_on_shield_failed: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_use_muti_player_fix_data: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_update_shield_by_max_hp: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
