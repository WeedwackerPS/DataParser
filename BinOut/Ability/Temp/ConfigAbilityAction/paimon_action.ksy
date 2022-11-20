meta:
  id: paimon_action
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__paimon_request_from
    - ../../../../EnumType/enum__paimon_skill
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: from_
    type: enum__paimon_request_from
    if: has_field_from_
  - id: action_name
    type: enum__paimon_skill
    if: has_field_action_name
instances:
  has_field_from_: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_action_name: # Field №1
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
