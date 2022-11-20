meta:
  id: avatar_enter_view_bias
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: sphere_bias_pole
    type: f4
    if: has_field_sphere_bias_pole
  - id: sphere_bias_elev
    type: f4
    if: has_field_sphere_bias_elev
  - id: sphere_radius
    type: f4
    if: has_field_sphere_radius
  - id: post_forward_pole_delta_angle
    type: f4
    if: has_field_post_forward_pole_delta_angle
  - id: post_forward_elev_delta_angle
    type: f4
    if: has_field_post_forward_elev_delta_angle
  - id: duration_in_normal_state
    type: f4
    if: has_field_duration_in_normal_state
  - id: lock_zoom
    type: u1
    if: has_field_lock_zoom
  - id: lock_reset_back
    type: u1
    if: has_field_lock_reset_back
instances:
  has_field_sphere_bias_pole: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_sphere_bias_elev: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_sphere_radius: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_post_forward_pole_delta_angle: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_post_forward_elev_delta_angle: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_duration_in_normal_state: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_lock_zoom: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_lock_reset_back: # Field №7
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
