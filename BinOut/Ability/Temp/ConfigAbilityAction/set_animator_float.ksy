meta:
  id: set_animator_float
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
  - id: float_id
    type: aux_types::string
    if: has_field_float_id
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: persistent
    type: u1
    if: has_field_persistent
  - id: use_random_value
    type: u1
    if: has_field_use_random_value
  - id: random_value_min
    type: aux_types::dynamic_float
    if: has_field_random_value_min
  - id: random_value_max
    type: aux_types::dynamic_float
    if: has_field_random_value_max
  - id: transition_time
    type: f4
    if: has_field_transition_time
instances:
  has_field_float_id: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_persistent: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_use_random_value: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_random_value_min: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_random_value_max: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_transition_time: # Field №6
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
