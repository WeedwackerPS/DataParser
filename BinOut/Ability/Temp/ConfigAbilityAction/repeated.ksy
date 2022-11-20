meta:
  id: repeated
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: repeat_times
    type: aux_types::dynamic_int
    if: has_field_repeat_times
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
instances:
  has_field_repeat_times: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_actions: # Field №1
    value: (bit_field & 0b10) != 0
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
