meta:
  id: attach_modifier_to_predicate_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__avatar_stage_type
    - ../../../../EnumType/enum__on_event_type
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - Common/array_of__config_ability_state_to_actions__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__avatar_stage_type
    if: has_field_type
  - id: on_event
    type: enum__on_event_type
    if: has_field_on_event
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: on_ability_state_added
    type: array_of__config_ability_state_to_actions__length_u
    if: has_field_on_ability_state_added
  - id: on_ability_state_removed
    type: array_of__config_ability_state_to_actions__length_u
    if: has_field_on_ability_state_removed
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_on_event: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_predicates: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_modifier_name: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_on_ability_state_added: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_on_ability_state_removed: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
