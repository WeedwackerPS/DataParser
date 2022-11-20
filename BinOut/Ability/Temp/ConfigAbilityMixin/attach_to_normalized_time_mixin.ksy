meta:
  id: attach_to_normalized_time_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: state_id
    type: aux_types::string
    if: has_field_state_id
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: target
    type: enum__ability_targetting
    if: has_field_target
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: normalize_start
    type: f4
    if: has_field_normalize_start
  - id: normalize_end
    type: f4
    if: has_field_normalize_end
instances:
  has_field_state_id: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_target: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_predicates: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_normalize_start: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_normalize_end: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
