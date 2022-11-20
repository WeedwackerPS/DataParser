meta:
  id: relational_operation_predicate
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__relational_operator
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: logic
    type: enum__relational_operator
    if: has_field_logic
instances:
  has_field_logic: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
