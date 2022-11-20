meta:
  id: set_global_value_to_override_map
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__ability_formula
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: ability_formula
    type: enum__ability_formula
    if: has_field_ability_formula
  - id: is_from_owner
    type: u1
    if: has_field_is_from_owner
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: override_map_key
    type: aux_types::string
    if: has_field_override_map_key
instances:
  has_field_ability_formula: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_is_from_owner: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_global_value_key: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_override_map_key: # Field №3
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
