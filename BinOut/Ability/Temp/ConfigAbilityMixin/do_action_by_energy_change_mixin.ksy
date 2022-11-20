meta:
  id: do_action_by_energy_change_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__avatar_stage_type
    - ../../../../ArrayType/array_of__enum__element_type__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__avatar_stage_type
    if: has_field_type
  - id: element_types
    type: array_of__enum__element_type__length_u
    if: has_field_element_types
  - id: do_when_energy_max
    type: u1
    if: has_field_do_when_energy_max
  - id: on_gain_energy_by_ball
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_gain_energy_by_ball
  - id: on_gain_energy_by_other
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_gain_energy_by_other
  - id: on_gain_energy_by_all
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_gain_energy_by_all
  - id: on_gain_energy_max
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_gain_energy_max
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_element_types: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_do_when_energy_max: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_on_gain_energy_by_ball: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_on_gain_energy_by_other: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_on_gain_energy_by_all: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_on_gain_energy_max: # Field №6
    value: (bit_field & 0b1000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
