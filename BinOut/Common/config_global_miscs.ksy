meta:
  id: config_global_miscs
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: air_flow_acc
    type: f4
    if: has_field_air_flow_acc
  - id: paimon_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_paimon_gadget_id
  - id: cure_effect
    type: aux_types::string
    if: has_field_cure_effect
  - id: avatar_focus
    type: config_avatar_focus_group
    if: has_field_avatar_focus
  - id: gadget_ui_cut_sence_cfg_path
    type: aux_types::string
    if: has_field_gadget_ui_cut_sence_cfg_path
  - id: gadget_ui_camera_look_cfg_path
    type: aux_types::string
    if: has_field_gadget_ui_camera_look_cfg_path
  - id: weapon_anim_curve_path
    type: aux_types::string
    if: has_field_weapon_anim_curve_path
instances:
  has_field_air_flow_acc: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_paimon_gadget_id: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_cure_effect: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_avatar_focus: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_gadget_ui_cut_sence_cfg_path: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_gadget_ui_camera_look_cfg_path: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_weapon_anim_curve_path: # Field №6
    value: (bit_field & 0b1000000) != 0
types:
  config_avatar_focus_group:
    seq:
      - id: bit_field
        type: u1
      - id: ps4
        type: config_avatar_focus
        if: has_field_ps4
      - id: ps5
        type: config_avatar_focus
        if: has_field_ps5
      - id: pc
        type: config_avatar_focus
        if: has_field_pc
      - id: other
        type: config_avatar_focus
        if: has_field_other
    instances:
      has_field_ps4: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_ps5: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_pc: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_other: # Field №3
        value: (bit_field & 0b1000) != 0
  config_avatar_focus:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: camera_hor_move_speed
        type: f4
        if: has_field_camera_hor_move_speed
      - id: camera_ver_move_speed
        type: f4
        if: has_field_camera_ver_move_speed
      - id: camera_hor_sticky_ratio
        type: f4
        if: has_field_camera_hor_sticky_ratio
      - id: camera_ver_sticky_ratio
        type: f4
        if: has_field_camera_ver_sticky_ratio
      - id: auto_focus_hor_speed
        type: f4
        if: has_field_auto_focus_hor_speed
      - id: auto_focus_ver_speed
        type: f4
        if: has_field_auto_focus_ver_speed
      - id: auto_focus_range_coef
        type: f4
        if: has_field_auto_focus_range_coef
      - id: gyro_hor_move_speed
        type: f4
        if: has_field_gyro_hor_move_speed
      - id: gyro_ver_move_speed
        type: f4
        if: has_field_gyro_ver_move_speed
    instances:
      has_field_camera_hor_move_speed: # Field №0
        value: (bit_field.value & 0b000000001) != 0
      has_field_camera_ver_move_speed: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_camera_hor_sticky_ratio: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_camera_ver_sticky_ratio: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_auto_focus_hor_speed: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_auto_focus_ver_speed: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_auto_focus_range_coef: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_gyro_hor_move_speed: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_gyro_ver_move_speed: # Field №8
        value: (bit_field.value & 0b100000000) != 0