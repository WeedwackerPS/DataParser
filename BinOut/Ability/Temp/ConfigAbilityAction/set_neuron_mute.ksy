meta:
  id: set_neuron_mute
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__neuron_name
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: neuron_name
    type: enum__neuron_name
    if: has_field_neuron_name
  - id: enable
    type: u1
    if: has_field_enable
instances:
  has_field_neuron_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_enable: # Field №1
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
