meta:
  id: push_dvalin_s01process
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: time
    type: f4
    if: has_field_time
  - id: to_percentage
    type: f4
    if: has_field_to_percentage
  - id: un_break
    type: u1
    if: has_field_un_break
  - id: set_force
    type: u1
    if: has_field_set_force
  - id: vector
    type: vector
    if: has_field_vector
  - id: attenuation
    type: f4
    if: has_field_attenuation
instances:
  has_field_time: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_to_percentage: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_un_break: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_set_force: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_vector: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_attenuation: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
