meta:
  id: trigger_resist_damage_text_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__enum__element_type__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: element_types
    type: array_of__enum__element_type__length_u
    if: has_field_element_types
instances:
  has_field_element_types: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
