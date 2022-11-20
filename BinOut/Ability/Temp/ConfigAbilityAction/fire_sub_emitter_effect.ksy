meta:
  id: fire_sub_emitter_effect
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: effect_pattern
    type: aux_types::dynamic_string
    if: has_field_effect_pattern
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: scale
    type: f4
    if: has_field_scale
instances:
  has_field_effect_pattern: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_born: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_scale: # Field №2
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
