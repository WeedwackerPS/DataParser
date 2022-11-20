meta:
  id: do_action_by_gain_crystal_seed_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__enum__element_type__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: element_types
    type: array_of__enum__element_type__length_u
    if: has_field_element_types
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
instances:
  has_field_element_types: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_actions: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
