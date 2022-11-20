meta:
  id: by_hit_impulse
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: hit_impulse
    type: f4
    if: has_field_hit_impulse
instances:
  has_field_hit_impulse: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
