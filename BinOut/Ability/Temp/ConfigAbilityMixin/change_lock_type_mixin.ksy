meta:
  id: change_lock_type_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: lock_type
    type: aux_types::string
    if: has_field_lock_type
  - id: override_range
    type: f4
    if: has_field_override_range
  - id: override_normal_pri
    type: f4
    if: has_field_override_normal_pri
  - id: override_combat_pri
    type: f4
    if: has_field_override_combat_pri
instances:
  has_field_lock_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_override_range: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_override_normal_pri: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_override_combat_pri: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
