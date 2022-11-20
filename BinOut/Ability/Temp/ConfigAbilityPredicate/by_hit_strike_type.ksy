meta:
  id: by_hit_strike_type
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__strike_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: strike_type
    type: enum__strike_type
    if: has_field_strike_type
instances:
  has_field_strike_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
