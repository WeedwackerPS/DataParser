meta:
  id: send_effect_trigger
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__animator_param_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: parameter
    type: aux_types::string
    if: has_field_parameter
  - id: type
    type: enum__animator_param_type
    if: has_field_type
  - id: value
    type: aux_types::vlq_base128_le_s
    if: has_field_value
  - id: effect_pattern
    type: aux_types::dynamic_string
    if: has_field_effect_pattern
  - id: float_value
    type: f4
    if: has_field_float_value
instances:
  has_field_parameter: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_type: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_value: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_effect_pattern: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_float_value: # Field №4
    value: (bit_field & 0b10000) != 0
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
