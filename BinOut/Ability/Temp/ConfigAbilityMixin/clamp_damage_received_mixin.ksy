meta:
  id: clamp_damage_received_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__damage_clamp_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: clamp_type
    type: enum__damage_clamp_type
    if: has_field_clamp_type
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
  - id: min_value
    type: aux_types::dynamic_float
    if: has_field_min_value
instances:
  has_field_clamp_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_max_value: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_min_value: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
