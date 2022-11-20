meta:
  id: change_field_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__change_field_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__change_field_type
    if: has_field_type
  - id: target_radius
    type: f4
    if: has_field_target_radius
  - id: time
    type: f4
    if: has_field_time
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_target_radius: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_time: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
