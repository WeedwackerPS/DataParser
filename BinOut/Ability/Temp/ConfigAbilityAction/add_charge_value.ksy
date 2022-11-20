meta:
  id: add_charge_value
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__element_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: charge_type
    type: enum__element_type
    if: has_field_charge_type
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
instances:
  has_field_charge_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_global_value_key: # Field №2
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
