meta:
  id: heal_sp
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
  - id: amount_by_caster_max_sp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_caster_max_sp_ratio
  - id: amount_by_target_max_sp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_target_max_sp_ratio
  - id: amount_by_current_combo_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_current_combo_ratio
  - id: mute_heal_effect
    type: u1
    if: has_field_mute_heal_effect
  - id: heal_ratio
    type: f4
    if: has_field_heal_ratio
instances:
  has_field_amount: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_amount_by_caster_max_sp_ratio: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_amount_by_target_max_sp_ratio: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_amount_by_current_combo_ratio: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_mute_heal_effect: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_heal_ratio: # Field №5
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
