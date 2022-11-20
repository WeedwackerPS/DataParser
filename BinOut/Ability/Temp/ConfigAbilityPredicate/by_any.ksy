meta:
  id: by_any
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
instances:
  has_field_predicates: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
