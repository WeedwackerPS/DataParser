meta:
  id: set_emission_scaler
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__body_material_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: material_type
    type: enum__body_material_type
    if: has_field_material_type
  - id: use_default_color
    type: u1
    if: has_field_use_default_color
  - id: value
    type: f4
    if: has_field_value
  - id: duration
    type: f4
    if: has_field_duration
instances:
  has_field_material_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_use_default_color: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_value: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_duration: # Field №3
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
