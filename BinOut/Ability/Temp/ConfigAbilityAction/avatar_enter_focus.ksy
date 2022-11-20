meta:
  id: avatar_enter_focus
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: camera_follow_lower
    type: vector
    if: has_field_camera_follow_lower
  - id: camera_follow_upper
    type: vector
    if: has_field_camera_follow_upper
  - id: camera_follow_max_degree
    type: f4
    if: has_field_camera_follow_max_degree
  - id: camera_follow_min_degree
    type: f4
    if: has_field_camera_follow_min_degree
  - id: camera_fast_focus_mode
    type: u1
    if: has_field_camera_fast_focus_mode
  - id: face_to_target
    type: u1
    if: has_field_face_to_target
  - id: face_to_target_angle_threshold
    type: f4
    if: has_field_face_to_target_angle_threshold
  - id: change_main_skill_id
    type: u1
    if: has_field_change_main_skill_id
  - id: drag_button_name
    type: aux_types::string
    if: has_field_drag_button_name
  - id: assistance
    type: focus_assistance_group
    if: has_field_assistance
  - id: can_move
    type: u1
    if: has_field_can_move
  - id: show_crosshair
    type: u1
    if: has_field_show_crosshair
  - id: vcam_fov
    type: f4
    if: has_field_vcam_fov
  - id: focus_anchor_hor_angle
    type: f4
    if: has_field_focus_anchor_hor_angle
  - id: focus_anchor_ver_angle
    type: f4
    if: has_field_focus_anchor_ver_angle
  - id: disable_anim
    type: u1
    if: has_field_disable_anim
instances:
  has_field_camera_follow_lower: # Field №0
    value: (bit_field.value & 0b0000000000000001) != 0
  has_field_camera_follow_upper: # Field №1
    value: (bit_field.value & 0b0000000000000010) != 0
  has_field_camera_follow_max_degree: # Field №2
    value: (bit_field.value & 0b0000000000000100) != 0
  has_field_camera_follow_min_degree: # Field №3
    value: (bit_field.value & 0b0000000000001000) != 0
  has_field_camera_fast_focus_mode: # Field №4
    value: (bit_field.value & 0b0000000000010000) != 0
  has_field_face_to_target: # Field №5
    value: (bit_field.value & 0b0000000000100000) != 0
  has_field_face_to_target_angle_threshold: # Field №6
    value: (bit_field.value & 0b0000000001000000) != 0
  has_field_change_main_skill_id: # Field №7
    value: (bit_field.value & 0b0000000010000000) != 0
  has_field_drag_button_name: # Field №8
    value: (bit_field.value & 0b0000000100000000) != 0
  has_field_assistance: # Field №9
    value: (bit_field.value & 0b0000001000000000) != 0
  has_field_can_move: # Field №10
    value: (bit_field.value & 0b0000010000000000) != 0
  has_field_show_crosshair: # Field №11
    value: (bit_field.value & 0b0000100000000000) != 0
  has_field_vcam_fov: # Field №12
    value: (bit_field.value & 0b0001000000000000) != 0
  has_field_focus_anchor_hor_angle: # Field №13
    value: (bit_field.value & 0b0010000000000000) != 0
  has_field_focus_anchor_ver_angle: # Field №14
    value: (bit_field.value & 0b0100000000000000) != 0
  has_field_disable_anim: # Field №15
    value: (bit_field.value & 0b1000000000000000) != 0
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
types:
  focus_assistance_group:
    seq:
      - id: bit_field
        type: u1
      - id: ps4
        type: focus_assistance
        if: has_field_ps4
      - id: ps5
        type: focus_assistance
        if: has_field_ps5
      - id: other
        type: focus_assistance
        if: has_field_other
    instances:
      has_field_ps4: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_ps5: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_other: # Field №2
        value: (bit_field & 0b100) != 0
  focus_assistance:
    seq:
      - id: bit_field
        type: u1
      - id: use_focus_sticky
        type: u1
        if: has_field_use_focus_sticky
      - id: use_auto_focus
        type: u1
        if: has_field_use_auto_focus
      - id: use_gyro
        type: u1
        if: has_field_use_gyro
    instances:
      has_field_use_focus_sticky: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_use_auto_focus: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_use_gyro: # Field №2
        value: (bit_field & 0b100) != 0
