meta:
  id: attach_modifier_to_target_distance_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__dynamic_float__length_u
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: target_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_target_i_ds
  - id: byserver
    type: u1
    if: has_field_byserver
  - id: value_steps
    type: array_of__aux_types__dynamic_float__length_u
    if: has_field_value_steps
  - id: modifier_name_steps
    type: array_of__aux_types__string__length_u
    if: has_field_modifier_name_steps
  - id: remove_applied_modifier
    type: u1
    if: has_field_remove_applied_modifier
  - id: blend_param
    type: aux_types::string
    if: has_field_blend_param
  - id: blend_distance
    type: array_of__aux_types__dynamic_float__length_u
    if: has_field_blend_distance
  - id: effect_pattern
    type: aux_types::string
    if: has_field_effect_pattern
instances:
  has_field_target_i_ds: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_byserver: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_value_steps: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_modifier_name_steps: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_remove_applied_modifier: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_blend_param: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_blend_distance: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_effect_pattern: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
