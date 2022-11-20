meta:
  id: fishing_aim_parabola_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: min_angle
    type: f4
    if: has_field_min_angle
  - id: max_angle
    type: f4
    if: has_field_max_angle
  - id: min_range
    type: f4
    if: has_field_min_range
  - id: max_range
    type: f4
    if: has_field_max_range
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: other_targets
    type: disp__select_targets
    if: has_field_other_targets
  - id: target
    type: enum__ability_targetting
    if: has_field_target
instances:
  has_field_min_angle: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_max_angle: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_min_range: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_max_range: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_global_value_key: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_other_targets: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_target: # Field №6
    value: (bit_field & 0b1000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
