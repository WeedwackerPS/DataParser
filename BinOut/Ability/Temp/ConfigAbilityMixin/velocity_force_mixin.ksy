meta:
  id: velocity_force_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__enum__velocity_force_type__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: mute_all
    type: u1
    if: has_field_mute_all
  - id: use_all
    type: u1
    if: has_field_use_all
  - id: include_forces
    type: array_of__enum__velocity_force_type__length_u
    if: has_field_include_forces
  - id: exclude_forces
    type: array_of__enum__velocity_force_type__length_u
    if: has_field_exclude_forces
instances:
  has_field_mute_all: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_use_all: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_include_forces: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_exclude_forces: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
