meta:
  id: config_ability_mixin
  endian: le
  license: GPLv2
seq:
  - id: bit_field
    type: u1
  - id: is_unique
    type: u1
    if: has_field_is_unique
instances:
  has_field_is_unique: # Field №0
    value: (bit_field & 0b1) != 0
