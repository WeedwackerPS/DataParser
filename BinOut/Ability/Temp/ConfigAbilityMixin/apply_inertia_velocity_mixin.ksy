meta:
  id: apply_inertia_velocity_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: damping
    type: f4
    if: has_field_damping
  - id: use_xz
    type: u1
    if: has_field_use_xz
  - id: use_y
    type: u1
    if: has_field_use_y
instances:
  has_field_damping: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_use_xz: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_use_y: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
