meta:
  id: kill_self
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__die_state_flag
    - ../../../../EnumType/enum__kill_self_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: duration
    type: f4
    if: has_field_duration
  - id: die_state_flage
    type: enum__die_state_flag
    if: has_field_die_state_flage
  - id: ban_drop
    type: u1
    if: has_field_ban_drop
  - id: ban_exp
    type: u1
    if: has_field_ban_exp
  - id: ban_hp_percentage_drop
    type: u1
    if: has_field_ban_hp_percentage_drop
  - id: kill_self_type
    type: enum__kill_self_type
    if: has_field_kill_self_type
  - id: hide_entity
    type: u1
    if: has_field_hide_entity
instances:
  has_field_duration: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_die_state_flage: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_ban_drop: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_ban_exp: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_ban_hp_percentage_drop: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_kill_self_type: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_hide_entity: # Field №6
    value: (bit_field & 0b1000000) != 0
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
