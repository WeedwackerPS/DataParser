meta:
  id: attach_modifier_to_self_global_value_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__ability_targetting
    - ../../../../EnumType/enum__add_action_type
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__dynamic_float__length_u
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - Common/array_of__array_of__disp__config_ability_action__length_u__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: global_value_target
    type: enum__ability_targetting
    if: has_field_global_value_target
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: add_action
    type: enum__add_action_type
    if: has_field_add_action
  - id: default_global_value_on_create
    type: aux_types::dynamic_float
    if: has_field_default_global_value_on_create
  - id: value_steps
    type: array_of__aux_types__dynamic_float__length_u
    if: has_field_value_steps
  - id: modifier_name_steps
    type: array_of__aux_types__string__length_u
    if: has_field_modifier_name_steps
  - id: action_queues
    type: array_of__array_of__disp__config_ability_action__length_u__length_u
    if: has_field_action_queues
  - id: remove_applied_modifier
    type: u1
    if: has_field_remove_applied_modifier
instances:
  has_field_global_value_target: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_global_value_key: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_add_action: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_default_global_value_on_create: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_value_steps: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_modifier_name_steps: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_action_queues: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_remove_applied_modifier: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
