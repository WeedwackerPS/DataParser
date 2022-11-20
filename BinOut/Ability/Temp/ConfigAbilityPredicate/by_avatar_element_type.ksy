meta:
  id: by_avatar_element_type
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
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
instances:
  has_field_element_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
