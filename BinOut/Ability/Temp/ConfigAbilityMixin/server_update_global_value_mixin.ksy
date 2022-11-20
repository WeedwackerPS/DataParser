meta:
  id: server_update_global_value_mixin
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
  - id: key
    type: aux_types::string
    if: has_field_key
  - id: use_limit_range
    type: u1
    if: has_field_use_limit_range
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
  - id: min_value
    type: aux_types::dynamic_float
    if: has_field_min_value
instances:
  has_field_key: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_use_limit_range: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_max_value: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_min_value: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
