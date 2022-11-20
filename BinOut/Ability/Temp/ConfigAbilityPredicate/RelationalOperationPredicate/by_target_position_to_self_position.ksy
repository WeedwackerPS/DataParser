meta:
  id: by_target_position_to_self_position
  endian: le
  license: GPL
  imports:
    - ../relational_operation_predicate
    - ../../../../../EnumType/enum__target_pos_to_self_pos_type
    - ../../../../../aux_types
seq:
  - id: base
    type: relational_operation_predicate
  - id: bit_field
    type: u1
  - id: compare_type
    type: enum__target_pos_to_self_pos_type
    if: has_field_compare_type
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
instances:
  has_field_compare_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
