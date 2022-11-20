meta:
  id: by_has_shield
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__element_type
    - ../../../../EnumType/enum__has_shield_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: type
    type: enum__has_shield_type
    if: has_field_type
  - id: use_potent_shield
    type: u1
    if: has_field_use_potent_shield
  - id: potent_shield_type
    type: enum__element_type
    if: has_field_potent_shield_type
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_use_potent_shield: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_potent_shield_type: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  target:
    value: base.target
