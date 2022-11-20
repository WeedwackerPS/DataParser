meta:
  id: change_shield_value
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: shield_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_shield_hp_ratio
  - id: shield_hp
    type: aux_types::dynamic_float
    if: has_field_shield_hp
  - id: max_shield_by_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_max_shield_by_hp_ratio
  - id: max_shield_hp
    type: aux_types::dynamic_float
    if: has_field_max_shield_hp
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: refresh_time
    type: u1
    if: has_field_refresh_time
instances:
  has_field_shield_hp_ratio: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_shield_hp: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_max_shield_by_hp_ratio: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_max_shield_hp: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_modifier_name: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_refresh_time: # Field №5
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
