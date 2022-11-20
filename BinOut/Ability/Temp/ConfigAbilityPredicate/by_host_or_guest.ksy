meta:
  id: by_host_or_guest
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: is_host
    type: u1
    if: has_field_is_host
instances:
  has_field_is_host: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
