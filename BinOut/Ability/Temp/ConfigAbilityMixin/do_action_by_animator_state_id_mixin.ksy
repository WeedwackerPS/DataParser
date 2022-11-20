meta:
  id: do_action_by_animator_state_id_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_state_i_ds
  - id: enter_predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_enter_predicates
  - id: exit_predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_exit_predicates
  - id: enter_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_enter_actions
  - id: exit_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_exit_actions
instances:
  has_field_state_i_ds: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_enter_predicates: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_exit_predicates: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_enter_actions: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_exit_actions: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
