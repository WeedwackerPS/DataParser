meta:
  id: dynamic_collision_mixin
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
  - id: tags
    type: array_of__aux_types__string__length_u
    if: has_field_tags
  - id: is_checker
    type: u1
    if: has_field_is_checker
instances:
  has_field_tags: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_is_checker: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
