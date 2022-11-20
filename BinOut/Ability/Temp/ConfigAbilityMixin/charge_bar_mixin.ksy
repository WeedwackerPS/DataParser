meta:
  id: charge_bar_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__element_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: charge_bar_element_type
    type: enum__element_type
    if: has_field_charge_bar_element_type
  - id: charge_bar_icon_id
    type: aux_types::vlq_base128_le_s
    if: has_field_charge_bar_icon_id
  - id: initial_value
    type: aux_types::dynamic_float
    if: has_field_initial_value
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
instances:
  has_field_charge_bar_element_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_charge_bar_icon_id: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_initial_value: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_max_value: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
