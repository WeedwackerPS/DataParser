meta:
  id: shield_bar_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: on_shield_broken
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_shield_broken
  - id: revert
    type: u1
    if: has_field_revert
  - id: show_damage_text
    type: aux_types::string
    if: has_field_show_damage_text
  - id: use_muti_player_fix_data
    type: u1
    if: has_field_use_muti_player_fix_data
instances:
  has_field_on_shield_broken: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_revert: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_show_damage_text: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_use_muti_player_fix_data: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
