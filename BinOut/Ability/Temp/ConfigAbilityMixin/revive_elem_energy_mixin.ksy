meta:
  id: revive_elem_energy_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__avatar_stage_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__avatar_stage_type
    if: has_field_type
  - id: period
    type: aux_types::dynamic_float
    if: has_field_period
  - id: base_energy
    type: aux_types::dynamic_float
    if: has_field_base_energy
  - id: ratio
    type: aux_types::dynamic_float
    if: has_field_ratio
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_period: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_base_energy: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_ratio: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
