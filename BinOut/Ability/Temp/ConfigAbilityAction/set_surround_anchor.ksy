meta:
  id: set_surround_anchor
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__action_point_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: set_point
    type: u1
    if: has_field_set_point
  - id: action_point_type
    type: enum__action_point_type
    if: has_field_action_point_type
  - id: action_point_id
    type: aux_types::vlq_base128_le_u
    if: has_field_action_point_id
instances:
  has_field_set_point: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_action_point_type: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_action_point_id: # Field №2
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
