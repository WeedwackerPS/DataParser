meta:
  id: fixed_avatar_rush_move
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: to_pos
    type: disp__config_born_type
    if: has_field_to_pos
  - id: time_range
    type: aux_types::dynamic_float
    if: has_field_time_range
  - id: max_range
    type: f4
    if: has_field_max_range
  - id: animator_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_animator_state_i_ds
  - id: override_move_collider
    type: aux_types::string
    if: has_field_override_move_collider
  - id: is_in_air
    type: u1
    if: has_field_is_in_air
  - id: check_animator_state_on_exit_only
    type: u1
    if: has_field_check_animator_state_on_exit_only
  - id: ignore_detect_forward
    type: u1
    if: has_field_ignore_detect_forward
instances:
  has_field_to_pos: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_time_range: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_max_range: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_animator_state_i_ds: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_override_move_collider: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_is_in_air: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_check_animator_state_on_exit_only: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_ignore_detect_forward: # Field №7
    value: (bit_field & 0b10000000) != 0
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
