meta:
  id: by_compare_with_target
  endian: le
  license: GPLv2
  imports:
    - ../relational_operation_predicate
    - ../../../../../EnumType/enum__compare_property
seq:
  - id: base
    type: relational_operation_predicate
  - id: bit_field
    type: u1
  - id: use_owner
    type: u1
    if: has_field_use_owner
  - id: property
    type: enum__compare_property
    if: has_field_property
instances:
  has_field_use_owner: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_property: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
