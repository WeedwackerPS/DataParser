meta:
  id: by_die_state_flag
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__die_state_flag
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: die_state_flag
    type: enum__die_state_flag
    if: has_field_die_state_flag
instances:
  has_field_die_state_flag: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
