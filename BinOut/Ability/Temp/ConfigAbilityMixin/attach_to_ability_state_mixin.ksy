meta:
  id: attach_to_ability_state_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__enum__ability_state__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: ability_states
    type: array_of__enum__ability_state__length_u
    if: has_field_ability_states
  - id: reject
    type: u1
    if: has_field_reject
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_ability_states: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_reject: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_modifier_name: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
