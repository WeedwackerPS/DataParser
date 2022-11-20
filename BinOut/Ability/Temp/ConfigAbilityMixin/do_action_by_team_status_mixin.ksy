meta:
  id: do_action_by_team_status_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: wait_time
    type: f4
    if: has_field_wait_time
instances:
  has_field_actions: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_predicates: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_wait_time: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
