meta:
  id: attach_to_state_id_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_state_i_ds
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: target
    type: enum__ability_targetting
    if: has_field_target
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: is_check_on_attach
    type: u1
    if: has_field_is_check_on_attach
instances:
  has_field_state_i_ds: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_target: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_predicates: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_is_check_on_attach: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
