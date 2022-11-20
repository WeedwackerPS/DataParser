meta:
  id: by_self_forward_and_target_position
  endian: le
  license: GPLv2
  imports:
    - ../relational_operation_predicate
    - ../../../../../aux_types
seq:
  - id: base
    type: relational_operation_predicate
  - id: bit_field
    type: u1
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: is_xz
    type: u1
    if: has_field_is_xz
instances:
  has_field_value: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_is_xz: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
