meta:
  id: create_item
  endian: le
  license: GPLv2
  imports:
    - ../create_entity
seq:
  - id: base
    type: create_entity
instances:
  # Base class fields
  owner_is_target:
    value: base.owner_is_target
  owner_is:
    value: base.owner_is
  prop_owner_is:
    value: base.prop_owner_is
  life_by_owner_is_alive:
    value: base.life_by_owner_is_alive
  born:
    value: base.born
  check_ground:
    value: base.check_ground
  sight_group_with_owner:
    value: base.sight_group_with_owner
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
