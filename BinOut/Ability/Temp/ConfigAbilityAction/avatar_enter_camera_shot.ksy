meta:
  id: avatar_enter_camera_shot
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__ability_camera_shot_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: camera_move_cfg_path
    type: aux_types::string
    if: has_field_camera_move_cfg_path
  - id: shot_type
    type: enum__ability_camera_shot_type
    if: has_field_shot_type
instances:
  has_field_camera_move_cfg_path: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_shot_type: # Field №1
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
