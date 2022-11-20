meta:
  id: by_summon_tag_value
  endian: le
  license: GPL
  imports:
    - ../relational_operation_predicate
    - ../../../../../aux_types
seq:
  - id: base
    type: relational_operation_predicate
  - id: bit_field
    type: u1
  - id: summon_tag
    type: aux_types::vlq_base128_le_u
    if: has_field_summon_tag
  - id: value
    type: aux_types::dynamic_int
    if: has_field_value
instances:
  has_field_summon_tag: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
