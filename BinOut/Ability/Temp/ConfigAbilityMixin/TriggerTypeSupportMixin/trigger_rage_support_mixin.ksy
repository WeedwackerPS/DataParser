meta:
  id: trigger_rage_support_mixin
  endian: le
  license: GPLv2
  imports:
    - ../trigger_type_support_mixin
seq:
  - id: base
    type: trigger_type_support_mixin
  - id: bit_field
    type: u1
  - id: damp_ratio
    type: f4
    if: has_field_damp_ratio
  - id: add_ratio
    type: f4
    if: has_field_add_ratio
  - id: max_value
    type: f4
    if: has_field_max_value
  - id: min_value
    type: f4
    if: has_field_min_value
instances:
  has_field_damp_ratio: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_add_ratio: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_max_value: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_min_value: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  duration:
    value: base.duration
  radius:
    value: base.radius
  is_unique:
    value: base.is_unique
