meta:
  id: by_cur_team_has_weapon_type
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
    - ../../../../EnumType/enum__relational_operator
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: weapon_type
    type: aux_types::string
    if: has_field_weapon_type
  - id: number
    type: aux_types::vlq_base128_le_u
    if: has_field_number
  - id: logic
    type: enum__relational_operator
    if: has_field_logic
instances:
  has_field_weapon_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_number: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_logic: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  target:
    value: base.target
