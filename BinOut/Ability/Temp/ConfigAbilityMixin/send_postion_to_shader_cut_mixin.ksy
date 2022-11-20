meta:
  id: send_postion_to_shader_cut_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__ability_targetting
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: send_target
    type: enum__ability_targetting
    if: has_field_send_target
  - id: send_radius
    type: f4
    if: has_field_send_radius
  - id: scale
    type: vector
    if: has_field_scale
  - id: offset
    type: vector
    if: has_field_offset
instances:
  has_field_send_target: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_send_radius: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_scale: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_offset: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
