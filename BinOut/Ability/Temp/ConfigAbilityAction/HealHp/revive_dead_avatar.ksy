meta:
  id: revive_dead_avatar
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - revive_avatar
    - ../../../../../aux_types
seq:
  - id: base
    type: revive_avatar
  - id: bit_field
    type: u1
  - id: is_revive_other_player_avatar
    type: u1
    if: has_field_is_revive_other_player_avatar
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: cd_ratio
    type: aux_types::dynamic_float
    if: has_field_cd_ratio
  - id: range
    type: f4
    if: has_field_range
instances:
  has_field_is_revive_other_player_avatar: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_skill_id: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_cd_ratio: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_range: # Field №3
    value: (bit_field & 0b1000) != 0
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
