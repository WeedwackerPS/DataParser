meta:
  id: attach_effect
  endian: le
  license: GPLv2
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
  - id: effect_templete_id
    type: aux_types::vlq_base128_le_s
    if: has_field_effect_templete_id
  - id: set_self_as_effect_plugin_target
    type: u1
    if: has_field_set_self_as_effect_plugin_target
instances:
  has_field_effect_pattern: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_born: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_scale: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_effect_templete_id: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_set_self_as_effect_plugin_target: # Field №4
    value: (bit_field & 0b10000) != 0
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
