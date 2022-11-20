meta:
  id: gadget_charge_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__element_type
    - ../../../../ArrayType/array_of__aux_types__dynamic_float__length_u
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: charge_type
    type: enum__element_type
    if: has_field_charge_type
  - id: charge_ratio
    type: f4
    if: has_field_charge_ratio
  - id: charge_value
    type: f4
    if: has_field_charge_value
  - id: max_charge_value
    type: f4
    if: has_field_max_charge_value
  - id: value_steps
    type: array_of__aux_types__dynamic_float__length_u
    if: has_field_value_steps
  - id: modifier_name_steps
    type: array_of__aux_types__string__length_u
    if: has_field_modifier_name_steps
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: ratio_global_value_key
    type: aux_types::string
    if: has_field_ratio_global_value_key
instances:
  has_field_charge_type: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_charge_ratio: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_charge_value: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_max_charge_value: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_value_steps: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_modifier_name_steps: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_global_value_key: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_ratio_global_value_key: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
