meta:
  id: enable_hit_box_by_name
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: hit_box_names
    type: array_of__aux_types__string__length_u
    if: has_field_hit_box_names
  - id: set_enable
    type: u1
    if: has_field_set_enable
instances:
  has_field_hit_box_names: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_set_enable: # Field №1
    value: (bit_field & 0b10) != 0
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