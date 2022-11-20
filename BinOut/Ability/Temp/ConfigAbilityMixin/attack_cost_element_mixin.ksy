meta:
  id: attack_cost_element_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__attack_cost_type
    - ../../../../EnumType/enum__attack_type
    - ../../../../EnumType/enum__element_type
    - ../../../../EnumType/enum__strike_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: strike_type
    type: enum__strike_type
    if: has_field_strike_type
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
  - id: attack_type
    type: enum__attack_type
    if: has_field_attack_type
  - id: strike_cost_ratio
    type: f4
    if: has_field_strike_cost_ratio
  - id: attack_cost_ratio
    type: f4
    if: has_field_attack_cost_ratio
  - id: element_cost_ratio
    type: f4
    if: has_field_element_cost_ratio
  - id: cost_element_type
    type: enum__element_type
    if: has_field_cost_element_type
  - id: cost_type
    type: enum__attack_cost_type
    if: has_field_cost_type
instances:
  has_field_strike_type: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_element_type: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_attack_type: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_strike_cost_ratio: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_attack_cost_ratio: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_element_cost_ratio: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_cost_element_type: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_cost_type: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
