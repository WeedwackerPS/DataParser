meta:
  id: field_entity_count_change_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__target_type
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
  - id: force_trigger_when_change_authority
    type: u1
    if: has_field_force_trigger_when_change_authority
  - id: target_predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_target_predicates
  - id: on_field_enter
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_field_enter
  - id: on_field_exit
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_field_exit
instances:
  has_field_camp_target_type: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_force_trigger_when_change_authority: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_target_predicates: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_on_field_enter: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_on_field_exit: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
