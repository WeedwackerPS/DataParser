meta:
  id: do_action_by_element_reaction_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../ArrayType/array_of__enum__element_reaction_type__length_u
    - ../../../../ArrayType/array_of__enum__entity_type__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: range
    type: f4
    if: has_field_range
  - id: entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_entity_types
  - id: reaction_types
    type: array_of__enum__element_reaction_type__length_u
    if: has_field_reaction_types
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
instances:
  has_field_range: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_entity_types: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_reaction_types: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_actions: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
