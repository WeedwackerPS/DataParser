meta:
  id: by_find_blink_point_success
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: find_point_success
    type: u1
    if: has_field_find_point_success
instances:
  has_field_find_point_success: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
