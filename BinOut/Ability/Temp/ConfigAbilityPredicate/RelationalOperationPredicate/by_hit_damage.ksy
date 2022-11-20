meta:
  id: by_hit_damage
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
  - id: damage
    type: aux_types::dynamic_float
    if: has_field_damage
  - id: use_origin_damage
    type: u1
    if: has_field_use_origin_damage
instances:
  has_field_damage: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_use_origin_damage: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
