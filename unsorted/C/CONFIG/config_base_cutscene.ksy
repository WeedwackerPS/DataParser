types:
  config_base_cutscene:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: type
        type: enum__cutscene_type
        if: has_field_type
      - id: pre_task_cfg
        type: config_cutscene_pre_task
        if: has_field_pre_task_cfg
      - id: can_skip
        type: u1
        if: has_field_can_skip
      - id: force_can_skip
        type: u1
        if: has_field_force_can_skip
      - id: skip_general_dialog
        type: u1
        if: has_field_skip_general_dialog
      - id: can
        type: u1
        if: has_field_can
      - id: clear_black_screen
        type: u1
        if: has_field_clear_black_screen
      - id: fade_out_when_finish
        type: f4
        if: has_field_fade_out_when_finish
      - id: direct_transmit
        type: u1
        if: has_field_direct_transmit
      - id: delay_transmit
        type: f4
        if: has_field_delay_transmit
      - id: lua_data_path
        type: aux_types::string
        if: has_field_lua_data_path
      - id: res_path
        type: aux_types::string
        if: has_field_res_path
      - id: cast_list_path
        type: aux_types::string
        if: has_field_cast_list_path
      - id: entity_ban
        type: aux_types::string
        if: has_field_entity_ban
      - id: start_pos_type
        type: enum__cutscene_init_pos_type
        if: has_field_start_pos_type
      - id: start_offset
        type: vector
        if: has_field_start_offset
      - id: need_xz_euler
        type: u1
        if: has_field_need_xz_euler
      - id: need_y_euler
        type: u1
        if: has_field_need_y_euler
      - id: keep_camera
        type: u1
        if: has_field_keep_camera
      - id: use_target_pos
        type: u1
        if: has_field_use_target_pos
      - id: target_pos
        type: vector
        if: has_field_target_pos
      - id: modify_last_pose_offset
        type: u1
        if: has_field_modify_last_pose_offset
      - id: attack_mode_recover
        type: u1
        if: has_field_attack_mode_recover
      - id: crowd_lod0list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_crowd_lod0list
      - id: enable_camera_displacement
        type: u1
        if: has_field_enable_camera_displacement
      - id: entity_runtime_id
        type: aux_types::vlq_base128_le_u
        if: has_field_entity_runtime_id
      - id: clear_avatar_local_gadget
        type: u1
        if: has_field_clear_avatar_local_gadget
    instances:
      has_field_type: # Field №0
        value: (bit_field.value & 00000000000000000001) != 0
      has_field_pre_task_cfg: # Field №1
        value: (bit_field.value & 00000000000000000010) != 0
      has_field_can_skip: # Field №2
        value: (bit_field.value & 00000000000000000100) != 0
      has_field_force_can_skip: # Field №3
        value: (bit_field.value & 00000000000000001000) != 0
      has_field_skip_general_dialog: # Field №4
        value: (bit_field.value & 00000000000000010000) != 0
      has_field_can: # Field №5
        value: (bit_field.value & 00000000000000100000) != 0
      has_field_clear_black_screen: # Field №6
        value: (bit_field.value & 00000000000001000000) != 0
      has_field_fade_out_when_finish: # Field №7
        value: (bit_field.value & 00000000000010000000) != 0
      has_field_direct_transmit: # Field №8
        value: (bit_field.value & 00000000000100000000) != 0
      has_field_delay_transmit: # Field №9
        value: (bit_field.value & 00000000001000000000) != 0
      has_field_lua_data_path: # Field №10
        value: (bit_field.value & 00000000010000000000) != 0
      has_field_res_path: # Field №11
        value: (bit_field.value & 00000000100000000000) != 0
      has_field_cast_list_path: # Field №12
        value: (bit_field.value & 00000001000000000000) != 0
      has_field_entity_ban: # Field №13
        value: (bit_field.value & 00000010000000000000) != 0
      has_field_start_pos_type: # Field №14
        value: (bit_field.value & 00000100000000000000) != 0
      has_field_start_offset: # Field №15
        value: (bit_field.value & 00001000000000000000) != 0
      has_field_need_xz_euler: # Field №16
        value: (bit_field.value & 00010000000000000000) != 0
      has_field_need_y_euler: # Field №17
        value: (bit_field.value & 00100000000000000000) != 0
      has_field_keep_camera: # Field №18
        value: (bit_field.value & 01000000000000000000) != 0
      has_field_use_target_pos: # Field №19
        value: (bit_field.value & 0b000000010000000000000000000) != 0
      has_field_target_pos: # Field №20
        value: (bit_field.value & 0b000000100000000000000000000) != 0
      has_field_modify_last_pose_offset: # Field №21
        value: (bit_field.value & 0b000001000000000000000000000) != 0
      has_field_attack_mode_recover: # Field №22
        value: (bit_field.value & 0b000010000000000000000000000) != 0
      has_field_crowd_lod0list: # Field №23
        value: (bit_field.value & 0b000100000000000000000000000) != 0
      has_field_enable_camera_displacement: # Field №24
        value: (bit_field.value & 0b001000000000000000000000000) != 0
      has_field_entity_runtime_id: # Field №25
        value: (bit_field.value & 0b010000000000000000000000000) != 0
      has_field_clear_avatar_local_gadget: # Field №26
        value: (bit_field.value & 0b100000000000000000000000000) != 0
