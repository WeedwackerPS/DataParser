meta:
  id: trigger_bullet
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: bullet_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bullet_id
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: owner_is_target
    type: u1
    if: has_field_owner_is_target
  - id: owner_is
    type: enum__ability_targetting
    if: has_field_owner_is
  - id: prop_owner_is
    type: enum__ability_targetting
    if: has_field_prop_owner_is
  - id: life_by_owner_is_alive
    type: u1
    if: has_field_life_by_owner_is_alive
  - id: track_target
    type: enum__ability_targetting
    if: has_field_track_target
  - id: sight_group_with_owner
    type: u1
    if: has_field_sight_group_with_owner
instances:
  has_field_bullet_id: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_born: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_owner_is_target: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_owner_is: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_prop_owner_is: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_life_by_owner_is_alive: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_track_target: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_sight_group_with_owner: # Field №7
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
