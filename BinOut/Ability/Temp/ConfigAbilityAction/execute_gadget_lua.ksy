meta:
  id: execute_gadget_lua
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
  - id: param1
    type: aux_types::vlq_base128_le_s
    if: has_field_param1
  - id: param2
    type: aux_types::vlq_base128_le_s
    if: has_field_param2
  - id: param3
    type: aux_types::vlq_base128_le_s
    if: has_field_param3
instances:
  has_field_param1: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_param2: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_param3: # Field №2
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
