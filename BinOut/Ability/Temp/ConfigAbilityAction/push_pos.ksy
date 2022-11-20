meta:
  id: push_pos
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__ability_targetting
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: pos_type
    type: disp__config_born_type
    if: has_field_pos_type
  - id: save_to
    type: enum__ability_targetting
    if: has_field_save_to
instances:
  has_field_pos_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_save_to: # Field №1
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
