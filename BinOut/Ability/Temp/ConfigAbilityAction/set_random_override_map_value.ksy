meta:
  id: set_random_override_map_value
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__round_random_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: value_range_max
    type: f4
    if: has_field_value_range_max
  - id: value_range_min
    type: f4
    if: has_field_value_range_min
  - id: override_map_key
    type: aux_types::string
    if: has_field_override_map_key
  - id: round_type
    type: enum__round_random_type
    if: has_field_round_type
instances:
  has_field_value_range_max: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_value_range_min: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_override_map_key: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_round_type: # Field №3
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
