meta:
  id: summon
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../EnumType/enum__ability_targetting
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: monster_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_id
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: born_slot_index
    type: aux_types::vlq_base128_le_u
    if: has_field_born_slot_index
  - id: face_to_target
    type: enum__ability_targetting
    if: has_field_face_to_target
  - id: summon_tag
    type: aux_types::vlq_base128_le_u
    if: has_field_summon_tag
  - id: alive_by_owner
    type: u1
    if: has_field_alive_by_owner
  - id: is_elite
    type: u1
    if: has_field_is_elite
  - id: affix_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_affix_list
  - id: level_delta
    type: aux_types::dynamic_int
    if: has_field_level_delta
  - id: has_drop
    type: u1
    if: has_field_has_drop
  - id: has_exp
    type: u1
    if: has_field_has_exp
  - id: sight_group_with_owner
    type: u1
    if: has_field_sight_group_with_owner
instances:
  has_field_monster_id: # Field №0
    value: (bit_field.value & 0b000000000001) != 0
  has_field_born: # Field №1
    value: (bit_field.value & 0b000000000010) != 0
  has_field_born_slot_index: # Field №2
    value: (bit_field.value & 0b000000000100) != 0
  has_field_face_to_target: # Field №3
    value: (bit_field.value & 0b000000001000) != 0
  has_field_summon_tag: # Field №4
    value: (bit_field.value & 0b000000010000) != 0
  has_field_alive_by_owner: # Field №5
    value: (bit_field.value & 0b000000100000) != 0
  has_field_is_elite: # Field №6
    value: (bit_field.value & 0b000001000000) != 0
  has_field_affix_list: # Field №7
    value: (bit_field.value & 0b000010000000) != 0
  has_field_level_delta: # Field №8
    value: (bit_field.value & 0b000100000000) != 0
  has_field_has_drop: # Field №9
    value: (bit_field.value & 0b001000000000) != 0
  has_field_has_exp: # Field №10
    value: (bit_field.value & 0b010000000000) != 0
  has_field_sight_group_with_owner: # Field №11
    value: (bit_field.value & 0b100000000000) != 0
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
