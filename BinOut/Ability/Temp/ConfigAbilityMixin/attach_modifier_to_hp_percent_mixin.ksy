meta:
  id: attach_modifier_to_hp_percent_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__dynamic_float__length_u
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: value_steps
    type: array_of__aux_types__dynamic_float__length_u
    if: has_field_value_steps
  - id: modifier_name_steps
    type: array_of__aux_types__string__length_u
    if: has_field_modifier_name_steps
instances:
  has_field_value_steps: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_modifier_name_steps: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
