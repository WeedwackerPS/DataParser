meta:
  id: trigger_be_hit_support_mixin
  endian: le
  license: GPLv2
  imports:
    - ../trigger_type_support_mixin
    - ../../../../../EnumType/enum__hit_level
seq:
  - id: base
    type: trigger_type_support_mixin
  - id: bit_field
    type: u1
  - id: hit_level
    type: enum__hit_level
    if: has_field_hit_level
instances:
  has_field_hit_level: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  duration:
    value: base.duration
  radius:
    value: base.radius
  is_unique:
    value: base.is_unique
