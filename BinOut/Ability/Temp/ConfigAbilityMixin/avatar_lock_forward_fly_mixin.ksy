meta:
  id: avatar_lock_forward_fly_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: world_forward
    type: vector
    if: has_field_world_forward
  - id: fly_speed_scale
    type: f4
    if: has_field_fly_speed_scale
  - id: fly_back_speed_scale
    type: f4
    if: has_field_fly_back_speed_scale
  - id: eular_raw_input
    type: vector
    if: has_field_eular_raw_input
instances:
  has_field_world_forward: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_fly_speed_scale: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_fly_back_speed_scale: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_eular_raw_input: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
