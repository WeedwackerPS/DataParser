meta:
  id: avatar_steer_by_camera_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_state_i_ds
  - id: angular_speed
    type: f4
    if: has_field_angular_speed
  - id: can_revive_stamina
    type: u1
    if: has_field_can_revive_stamina
instances:
  has_field_state_i_ds: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_angular_speed: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_can_revive_stamina: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
