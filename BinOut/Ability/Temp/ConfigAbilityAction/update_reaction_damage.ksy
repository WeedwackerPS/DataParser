meta:
  id: update_reaction_damage
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: level_target
    type: enum__ability_targetting
    if: has_field_level_target
  - id: reaction_damage_name
    type: aux_types::string
    if: has_field_reaction_damage_name
instances:
  has_field_level_target: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_reaction_damage_name: # Field №1
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
