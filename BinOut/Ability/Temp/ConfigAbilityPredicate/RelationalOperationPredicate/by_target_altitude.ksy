meta:
  id: by_target_altitude
  endian: le
  license: GPLv2
  imports:
    - ../relational_operation_predicate
    - ../../../../../aux_types
    - ../../../../../EnumType/enum__target_altitude_type
seq:
  - id: base
    type: relational_operation_predicate
  - id: bit_field
    type: u1
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: target_altitude_type
    type: enum__target_altitude_type
    if: has_field_target_altitude_type
instances:
  has_field_value: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_target_altitude_type: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
