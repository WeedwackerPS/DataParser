meta:
  id: add_charge_bar_value
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: random_in_range
    type: u1
    if: has_field_random_in_range
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
  - id: min_value
    type: aux_types::dynamic_float
    if: has_field_min_value
instances:
  has_field_value: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_random_in_range: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_max_value: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_min_value: # Field №3
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
