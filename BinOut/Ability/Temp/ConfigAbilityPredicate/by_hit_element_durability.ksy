meta:
  id: by_hit_element_durability
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__element_type
    - ../../../../EnumType/enum__relation_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: element
    type: enum__element_type
    if: has_field_element
  - id: durability
    type: f4
    if: has_field_durability
  - id: compare_type
    type: enum__relation_type
    if: has_field_compare_type
  - id: apply_attenuation
    type: u1
    if: has_field_apply_attenuation
instances:
  has_field_element: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_durability: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_compare_type: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_apply_attenuation: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  target:
    value: base.target
