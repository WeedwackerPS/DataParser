meta:
  id: by_target_hp_ratio
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
  - id: hp_ratio
    type: aux_types::dynamic_float
    if: has_field_hp_ratio
instances:
  has_field_hp_ratio: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
