meta:
  id: attach_to_ai_alertness_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: alertness
    type: array_of__aux_types__vlq_base128_le_s__length_u
    if: has_field_alertness
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_alertness: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
