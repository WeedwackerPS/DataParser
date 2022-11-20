meta:
  id: try_trigger_platform_start_move
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: detect_height
    type: f4
    if: has_field_detect_height
  - id: detect_width
    type: f4
    if: has_field_detect_width
  - id: enable_rotation_offset
    type: u1
    if: has_field_enable_rotation_offset
  - id: fail_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_fail_actions
  - id: force_reset
    type: u1
    if: has_field_force_reset
  - id: force_trigger
    type: u1
    if: has_field_force_trigger
instances:
  has_field_detect_height: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_detect_width: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_enable_rotation_offset: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_fail_actions: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_force_reset: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_force_trigger: # Field №5
    value: (bit_field & 0b100000) != 0
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
