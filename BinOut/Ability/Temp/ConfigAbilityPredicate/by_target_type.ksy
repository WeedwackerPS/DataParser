meta:
  id: by_target_type
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: target_type
    type: enum__ability_targetting
    if: has_field_target_type
  - id: is_target
    type: u1
    if: has_field_is_target
instances:
  has_field_target_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_is_target: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
