meta:
  id: act_camera_shake
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../Common/config_camera_shake
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: camera_shake
    type: config_camera_shake
    if: has_field_camera_shake
  - id: born
    type: disp__config_born_type
    if: has_field_born
instances:
  has_field_camera_shake: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_born: # Field №1
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
