meta:
  id: recycle_modifier_mixin
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
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: cd
    type: f4
    if: has_field_cd
  - id: initial_cd
    type: f4
    if: has_field_initial_cd
instances:
  has_field_modifier_name: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_cd: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_initial_cd: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
