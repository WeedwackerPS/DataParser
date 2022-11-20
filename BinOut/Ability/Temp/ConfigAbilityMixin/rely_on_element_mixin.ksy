meta:
  id: rely_on_element_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__element_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
instances:
  has_field_element_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
