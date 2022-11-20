meta:
  id: by_big_team_body_type_sort
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
    - ../../../../EnumType/enum__relational_operator
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: number
    type: aux_types::vlq_base128_le_u
    if: has_field_number
  - id: logic
    type: enum__relational_operator
    if: has_field_logic
instances:
  has_field_number: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_logic: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
