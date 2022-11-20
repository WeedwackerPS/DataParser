meta:
  id: attach_element_type_resistance
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__element_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
  - id: duration_ratio
    type: f4
    if: has_field_duration_ratio
instances:
  has_field_element_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_duration_ratio: # Field №1
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
