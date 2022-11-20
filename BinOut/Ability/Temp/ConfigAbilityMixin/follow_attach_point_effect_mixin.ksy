meta:
  id: follow_attach_point_effect_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__follow_attach_occupy_priority
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: attach_priority
    type: enum__follow_attach_occupy_priority
    if: has_field_attach_priority
  - id: anbnaolcdee
    type: u1
    if: has_field_anbnaolcdee
instances:
  has_field_modifier_name: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_attach_priority: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_anbnaolcdee: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
