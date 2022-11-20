meta:
  id: change_prop_type_value_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: prop_type
    type: aux_types::string
    if: has_field_prop_type
  - id: energy_cost_delta
    type: aux_types::dynamic_float
    if: has_field_energy_cost_delta
instances:
  has_field_prop_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_energy_cost_delta: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
