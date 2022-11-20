meta:
  id: remove_velocity_force
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../Common/array_of__enum__velocity_force_type__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: forces
    type: array_of__enum__velocity_force_type__length_u
    if: has_field_forces
instances:
  has_field_forces: # Field №0
    value: (bit_field & 0b1) != 0
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
