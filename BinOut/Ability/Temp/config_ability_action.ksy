meta:
  id: config_ability_action
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__ability_targetting
    - ../../Common/config_ability_action_token
    - ConfigAbilityAction/Common/disp__select_targets
    - Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: token
    type: config_ability_action_token
    if: has_field_token
  - id: target
    type: enum__ability_targetting
    if: has_field_target
  - id: other_targets
    type: disp__select_targets
    if: has_field_other_targets
  - id: do_off_stage
    type: u1
    if: has_field_do_off_stage
  - id: do_after_die
    type: u1
    if: has_field_do_after_die
  - id: can_be_handled_on_recover
    type: u1
    if: has_field_can_be_handled_on_recover
  - id: mute_remote_action
    type: u1
    if: has_field_mute_remote_action
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: predicates_foreach
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates_foreach
instances:
  has_field_token: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_target: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_other_targets: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_do_off_stage: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_do_after_die: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_can_be_handled_on_recover: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_mute_remote_action: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_predicates: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_predicates_foreach: # Field №8
    value: (bit_field.value & 0b100000000) != 0