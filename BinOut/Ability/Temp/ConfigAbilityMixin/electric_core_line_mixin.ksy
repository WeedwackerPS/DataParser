meta:
  id: electric_core_line_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: other_targets
    type: disp__select_targets
    if: has_field_other_targets
  - id: activate_skill_key
    type: aux_types::string
    if: has_field_activate_skill_key
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
instances:
  has_field_other_targets: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_activate_skill_key: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_predicates: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
