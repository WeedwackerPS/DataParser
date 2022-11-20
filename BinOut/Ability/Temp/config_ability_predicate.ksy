meta:
  id: config_ability_predicate
  endian: le
  license: GPL
  imports:
    - ../../../EnumType/enum__ability_targetting
seq:
  - id: bit_field
    type: u1
  - id: target
    type: enum__ability_targetting
    if: has_field_target
instances:
  has_field_target: # Field №0
    value: (bit_field & 0b1) != 0
