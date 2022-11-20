meta:
  id: trigger_ability
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../DictType/dict_of__aux_types__string_aux_types__dynamic_float
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: ability_name
    type: aux_types::string
    if: has_field_ability_name
  - id: ability_specials
    type: dict_of__aux_types__string_aux_types__dynamic_float
    if: has_field_ability_specials
  - id: force_use_self_current_attack_target
    type: u1
    if: has_field_force_use_self_current_attack_target
instances:
  has_field_ability_name: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_ability_specials: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_force_use_self_current_attack_target: # Field №2
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
