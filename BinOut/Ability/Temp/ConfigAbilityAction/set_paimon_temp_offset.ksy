meta:
  id: set_paimon_temp_offset
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__paimon_request_from
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: from_
    type: enum__paimon_request_from
    if: has_field_from_
  - id: off_set_pos
    type: vector
    if: has_field_off_set_pos
  - id: time
    type: f4
    if: has_field_time
instances:
  has_field_from_: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_off_set_pos: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_time: # Field №2
    value: (bit_field & 0b100) != 0
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
