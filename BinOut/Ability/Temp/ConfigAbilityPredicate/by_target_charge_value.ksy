meta:
  id: by_target_charge_value
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__element_type
    - ../../../../EnumType/enum__relation_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: element
    type: enum__element_type
    if: has_field_element
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: compare_type
    type: enum__relation_type
    if: has_field_compare_type
instances:
  has_field_element: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_global_value_key: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_value: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_compare_type: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  target:
    value: base.target
