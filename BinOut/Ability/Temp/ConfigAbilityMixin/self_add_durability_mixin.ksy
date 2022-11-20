meta:
  id: self_add_durability_mixin
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
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: use_limit_range
    type: u1
    if: has_field_use_limit_range
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
  - id: min_value
    type: aux_types::dynamic_float
    if: has_field_min_value
  - id: think_interval
    type: f4
    if: has_field_think_interval
instances:
  has_field_value: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_use_limit_range: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_max_value: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_min_value: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_think_interval: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
