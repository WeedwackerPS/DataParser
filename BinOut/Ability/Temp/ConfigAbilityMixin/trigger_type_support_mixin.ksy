meta:
  id: trigger_type_support_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: duration
    type: f4
    if: has_field_duration
  - id: radius
    type: f4
    if: has_field_radius
instances:
  has_field_duration: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_radius: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
