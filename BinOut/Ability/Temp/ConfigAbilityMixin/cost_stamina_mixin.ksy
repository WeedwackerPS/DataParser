meta:
  id: cost_stamina_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: cost_stamina_delta
    type: aux_types::dynamic_float
    if: has_field_cost_stamina_delta
  - id: cost_stamina_ratio
    type: aux_types::dynamic_float
    if: has_field_cost_stamina_ratio
  - id: on_stamina_empty
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_stamina_empty
instances:
  has_field_cost_stamina_delta: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_cost_stamina_ratio: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_on_stamina_empty: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
