meta:
  id: animator_rotation_compensate_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: animator_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_animator_state_i_ds
  - id: animation_rotate
    type: f4
    if: has_field_animation_rotate
  - id: angle_limit
    type: f4
    if: has_field_angle_limit
instances:
  has_field_animator_state_i_ds: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_animation_rotate: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_angle_limit: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
