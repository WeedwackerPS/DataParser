meta:
  id: collision_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../Common/config_collision
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: collision
    type: config_collision
    if: has_field_collision
  - id: min_shock_speed
    type: f4
    if: has_field_min_shock_speed
  - id: cd
    type: f4
    if: has_field_cd
  - id: on_collision
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_collision
instances:
  has_field_collision: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_min_shock_speed: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_cd: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_on_collision: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
