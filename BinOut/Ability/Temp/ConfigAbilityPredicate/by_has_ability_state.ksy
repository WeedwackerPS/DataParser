meta:
  id: by_has_ability_state
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__ability_state
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: ability_state
    type: enum__ability_state
    if: has_field_ability_state
instances:
  has_field_ability_state: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
