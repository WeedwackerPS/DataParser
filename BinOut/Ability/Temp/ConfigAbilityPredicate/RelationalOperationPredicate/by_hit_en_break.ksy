meta:
  id: by_hit_en_break
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
  - id: en_break
    type: aux_types::dynamic_float
    if: has_field_en_break
instances:
  has_field_en_break: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
