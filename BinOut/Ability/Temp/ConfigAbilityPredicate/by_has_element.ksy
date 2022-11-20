meta:
  id: by_has_element
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__element_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: element
    type: enum__element_type
    if: has_field_element
instances:
  has_field_element: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
