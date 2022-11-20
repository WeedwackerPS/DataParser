meta:
  id: set_animator_int
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
  - id: int_id
    type: aux_types::string
    if: has_field_int_id
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: persistent
    type: u1
    if: has_field_persistent
instances:
  has_field_int_id: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_persistent: # Field №2
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
