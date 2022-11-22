types:
  config_camera_move_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: camera_pos_type
        type: enum__story_camera_pos_type
        if: has_field_camera_pos_type
      - id: cam_pos_offset
        type: vector
        if: has_field_cam_pos_offset
      - id: near_length
        type: f4
        if: has_field_near_length
      - id: cam_target_type
        type: enum__story_camera_target_type
        if: has_field_cam_target_type
      - id: cam_forward_target_offset
        type: vector
        if: has_field_cam_forward_target_offset
      - id: need_elev
        type: u1
        if: has_field_need_elev
      - id: cam_fov
        type: f4
        if: has_field_cam_fov
      - id: cam_dutch
        type: f4
        if: has_field_cam_dutch
      - id: lerp_ratio
        type: f4
        if: has_field_lerp_ratio
      - id: lerp_pattern
        type: aux_types::vlq_base128_le_s
        if: has_field_lerp_pattern
      - id: camera_blend_type
        type: enum__tween_ease_type
        if: has_field_camera_blend_type
      - id: story_dither
        type: u1
        if: has_field_story_dither
      - id: cut_frame_trans
        type: config_frame_transition
        if: has_field_cut_frame_trans
      - id: need_z_axis_rotate
        type: u1
        if: has_field_need_z_axis_rotate
      - id: rotate_angle
        type: f4
        if: has_field_rotate_angle
      - id: open_camera_dither
        type: u1
        if: has_field_open_camera_dither
      - id: target_npc_alias
        type: aux_types::string
        if: has_field_target_npc_alias
      - id: keep_camera_pos
        type: u1
        if: has_field_keep_camera_pos
      - id: use_duration_when_exit_focus
        type: u1
        if: has_field_use_duration_when_exit_focus
      - id: close_tree_leaf_dither
        type: u1
        if: has_field_close_tree_leaf_dither
      - id: multi_target_npc_alias_array
        type: array_of__aux_types__string__length_u
        if: has_field_multi_target_npc_alias_array
    instances:
      has_field_camera_pos_type: # Field №0
        value: (bit_field.value & 00000000000001) != 0
      has_field_cam_pos_offset: # Field №1
        value: (bit_field.value & 00000000000010) != 0
      has_field_near_length: # Field №2
        value: (bit_field.value & 00000000000100) != 0
      has_field_cam_target_type: # Field №3
        value: (bit_field.value & 00000000001000) != 0
      has_field_cam_forward_target_offset: # Field №4
        value: (bit_field.value & 00000000010000) != 0
      has_field_need_elev: # Field №5
        value: (bit_field.value & 00000000100000) != 0
      has_field_cam_fov: # Field №6
        value: (bit_field.value & 00000001000000) != 0
      has_field_cam_dutch: # Field №7
        value: (bit_field.value & 00000010000000) != 0
      has_field_lerp_ratio: # Field №8
        value: (bit_field.value & 00000100000000) != 0
      has_field_lerp_pattern: # Field №9
        value: (bit_field.value & 00001000000000) != 0
      has_field_camera_blend_type: # Field №10
        value: (bit_field.value & 00010000000000) != 0
      has_field_story_dither: # Field №11
        value: (bit_field.value & 00100000000000) != 0
      has_field_cut_frame_trans: # Field №12
        value: (bit_field.value & 01000000000000) != 0
      has_field_need_z_axis_rotate: # Field №13
        value: (bit_field.value & 0b000000010000000000000) != 0
      has_field_rotate_angle: # Field №14
        value: (bit_field.value & 0b000000100000000000000) != 0
      has_field_open_camera_dither: # Field №15
        value: (bit_field.value & 0b000001000000000000000) != 0
      has_field_target_npc_alias: # Field №16
        value: (bit_field.value & 0b000010000000000000000) != 0
      has_field_keep_camera_pos: # Field №17
        value: (bit_field.value & 0b000100000000000000000) != 0
      has_field_use_duration_when_exit_focus: # Field №18
        value: (bit_field.value & 0b001000000000000000000) != 0
      has_field_close_tree_leaf_dither: # Field №19
        value: (bit_field.value & 0b010000000000000000000) != 0
      has_field_multi_target_npc_alias_array: # Field №20
        value: (bit_field.value & 0b100000000000000000000) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
