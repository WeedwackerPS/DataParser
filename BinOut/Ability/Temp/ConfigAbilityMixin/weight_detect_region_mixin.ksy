meta:
  id: weight_detect_region_mixin
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
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: on_weight_changed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_weight_changed
instances:
  has_field_global_value_key: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_on_weight_changed: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
