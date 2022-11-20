meta:
  id: replace_event_pattern_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: old_patterns
    type: array_of__aux_types__string__length_u
    if: has_field_old_patterns
  - id: new_patterns
    type: array_of__aux_types__string__length_u
    if: has_field_new_patterns
instances:
  has_field_old_patterns: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_new_patterns: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
