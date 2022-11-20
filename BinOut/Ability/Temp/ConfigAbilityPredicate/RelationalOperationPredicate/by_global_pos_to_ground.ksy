meta:
  id: by_global_pos_to_ground
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
  - id: global_pos
    type: aux_types::string
    if: has_field_global_pos
  - id: to_ground_height
    type: aux_types::dynamic_float
    if: has_field_to_ground_height
  - id: to_water
    type: u1
    if: has_field_to_water
instances:
  has_field_global_pos: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_to_ground_height: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_to_water: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
