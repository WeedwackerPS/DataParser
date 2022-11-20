meta:
  id: trigger_element_support_mixin
  endian: le
  license: GPLv2
  imports:
    - ../trigger_type_support_mixin
    - ../../../../../EnumType/enum__element_type
seq:
  - id: base
    type: trigger_type_support_mixin
  - id: bit_field
    type: u1
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
instances:
  has_field_element_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  duration:
    value: base.duration
  radius:
    value: base.radius
  is_unique:
    value: base.is_unique
