meta:
  id: heal_hp
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: amount
    type: aux_types::dynamic_float
    if: has_field_amount
  - id: amount_by_caster_max_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_caster_max_hp_ratio
  - id: amount_by_target_max_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_target_max_hp_ratio
  - id: amount_by_target_current_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_target_current_hp_ratio
  - id: amount_by_caster_attack_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_caster_attack_ratio
  - id: mute_heal_effect
    type: u1
    if: has_field_mute_heal_effect
  - id: heal_ratio
    type: f4
    if: has_field_heal_ratio
  - id: ignore_ability_property
    type: u1
    if: has_field_ignore_ability_property
instances:
  has_field_amount: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_amount_by_caster_max_hp_ratio: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_amount_by_target_max_hp_ratio: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_amount_by_target_current_hp_ratio: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_amount_by_caster_attack_ratio: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_mute_heal_effect: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_heal_ratio: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_ignore_ability_property: # Field №7
    value: (bit_field & 0b10000000) != 0
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
