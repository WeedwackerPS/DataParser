meta:
  id: by_target_override_map_value
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
  - id: target_ability_name
    type: aux_types::string
    if: has_field_target_ability_name
  - id: target_key
    type: aux_types::string
    if: has_field_target_key
  - id: target_value
    type: aux_types::dynamic_float
    if: has_field_target_value
instances:
  has_field_target_ability_name: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_target_key: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_target_value: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
