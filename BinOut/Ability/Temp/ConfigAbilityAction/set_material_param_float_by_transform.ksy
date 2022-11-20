meta:
  id: set_material_param_float_by_transform
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
  - id: mat_name
    type: aux_types::string
    if: has_field_mat_name
  - id: pattern_name
    type: aux_types::string
    if: has_field_pattern_name
  - id: value
    type: f4
    if: has_field_value
  - id: use_curve
    type: u1
    if: has_field_use_curve
  - id: lerp_curve_index
    type: aux_types::vlq_base128_le_u
    if: has_field_lerp_curve_index
  - id: lerp_time
    type: f4
    if: has_field_lerp_time
instances:
  has_field_mat_name: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_pattern_name: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_value: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_use_curve: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_lerp_curve_index: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_lerp_time: # Field №5
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
