meta:
  id: element_reaction_shock_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/disp__config_ability_action
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: think_interval
    type: f4
    if: has_field_think_interval
  - id: camp_global_key
    type: aux_types::string
    if: has_field_camp_global_key
  - id: attack_action
    type: disp__config_ability_action
    if: has_field_attack_action
  - id: conduct_action
    type: disp__config_ability_action
    if: has_field_conduct_action
instances:
  has_field_think_interval: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_camp_global_key: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_attack_action: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_conduct_action: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
