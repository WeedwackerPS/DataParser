meta:
  id: streaming_modifier_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: apply_modifier
    type: u1
    if: has_field_apply_modifier
instances:
  has_field_apply_modifier: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
