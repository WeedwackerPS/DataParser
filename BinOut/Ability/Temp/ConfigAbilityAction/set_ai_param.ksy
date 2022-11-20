meta:
  id: set_ai_param
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__param_logic_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: param
    type: aux_types::dynamic_string
    if: has_field_param
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: is_bool
    type: u1
    if: has_field_is_bool
  - id: logic_type
    type: enum__param_logic_type
    if: has_field_logic_type
instances:
  has_field_param: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_is_bool: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_logic_type: # Field №3
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
