meta:
  id: modify_avatar_skill_cd
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: skill_slot
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skill_slot
  - id: cd_delta
    type: aux_types::dynamic_float
    if: has_field_cd_delta
  - id: cd_ratio
    type: aux_types::dynamic_float
    if: has_field_cd_ratio
instances:
  has_field_skill_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_skill_slot: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_cd_delta: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_cd_ratio: # Field №3
    value: (bit_field & 0b1000) != 0
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
