meta:
  id: select_targets_by_self_group
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - select_targets
    - ../../../../../aux_types
    - ../../../../../EnumType/enum__bitwise_operator
    - ../../../../../EnumType/enum__relational_operator
seq:
  - id: base
    type: select_targets
  - id: bit_field
    type: u1
  - id: operation
    type: enum__bitwise_operator
    if: has_field_operation
  - id: value
    type: aux_types::vlq_base128_le_u
    if: has_field_value
  - id: dynamic_value
    type: aux_types::dynamic_int
    if: has_field_dynamic_value
  - id: use_binary
    type: u1
    if: has_field_use_binary
  - id: compare_type
    type: enum__relational_operator
    if: has_field_compare_type
instances:
  has_field_operation: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_dynamic_value: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_use_binary: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_compare_type: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
