meta:
  id: by_avatar_in_water_depth
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__relation_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: compare_type
    type: enum__relation_type
    if: has_field_compare_type
  - id: depth
    type: f4
    if: has_field_depth
instances:
  has_field_compare_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_depth: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
