meta:
  id: effect_change_alpha_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: target
    type: enum__ability_targetting
    if: has_field_target
  - id: start_duration
    type: f4
    if: has_field_start_duration
  - id: end_duration
    type: f4
    if: has_field_end_duration
instances:
  has_field_target: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_start_duration: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_end_duration: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
