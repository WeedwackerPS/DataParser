meta:
  id: revive_avatar
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../heal_hp
seq:
  - id: base
    type: heal_hp
instances:
  # Base class fields
  amount:
    value: base.amount
  amount_by_caster_max_hp_ratio:
    value: base.amount_by_caster_max_hp_ratio
  amount_by_target_max_hp_ratio:
    value: base.amount_by_target_max_hp_ratio
  amount_by_target_current_hp_ratio:
    value: base.amount_by_target_current_hp_ratio
  amount_by_caster_attack_ratio:
    value: base.amount_by_caster_attack_ratio
  mute_heal_effect:
    value: base.mute_heal_effect
  heal_ratio:
    value: base.heal_ratio
  ignore_ability_property:
    value: base.ignore_ability_property
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
