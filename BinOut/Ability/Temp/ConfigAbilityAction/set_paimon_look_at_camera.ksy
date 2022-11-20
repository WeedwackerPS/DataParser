meta:
  id: set_paimon_look_at_camera
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__paimon_request_from
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: from_
    type: enum__paimon_request_from
    if: has_field_from_
  - id: lookat
    type: u1
    if: has_field_lookat
  - id: min_time
    type: f4
    if: has_field_min_time
  - id: max_time
    type: f4
    if: has_field_max_time
instances:
  has_field_from_: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_lookat: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_min_time: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_max_time: # Field №3
    value: (bit_field & 0b1000) != 0
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
