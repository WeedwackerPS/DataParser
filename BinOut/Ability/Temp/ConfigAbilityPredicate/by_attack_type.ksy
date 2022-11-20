meta:
  id: by_attack_type
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__attack_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: attack_type
    type: enum__attack_type
    if: has_field_attack_type
instances:
  has_field_attack_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
