meta:
  id: homeworld_enter_editor_mixin
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
  - id: editor_modifier_names
    type: array_of__aux_types__string__length_u
    if: has_field_editor_modifier_names
  - id: world_modifier_names
    type: array_of__aux_types__string__length_u
    if: has_field_world_modifier_names
instances:
  has_field_editor_modifier_names: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_world_modifier_names: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
