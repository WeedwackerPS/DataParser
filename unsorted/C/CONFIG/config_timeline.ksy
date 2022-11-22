types:
  config_timeline:
    seq:
      - id: base
        type: config_base_cutscene
      - id: bit_field
        type: u1
      - id: sync_load
        type: u1
        if: has_field_sync_load
      - id: fade_in_duration
        type: f4
        if: has_field_fade_in_duration
      - id: fade_out_duration
        type: f4
        if: has_field_fade_out_duration
      - id: force_gc
        type: u1
        if: has_field_force_gc
    instances:
      has_field_sync_load: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_fade_in_duration: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_fade_out_duration: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_force_gc: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      type:
        value: base.type
      pre_task_cfg:
        value: base.pre_task_cfg
      can_skip:
        value: base.can_skip
      force_can_skip:
        value: base.force_can_skip
      skip_general_dialog:
        value: base.skip_general_dialog
      can:
        value: base.can
      clear_black_screen:
        value: base.clear_black_screen
      fade_out_when_finish:
        value: base.fade_out_when_finish
      direct_transmit:
        value: base.direct_transmit
      delay_transmit:
        value: base.delay_transmit
      lua_data_path:
        value: base.lua_data_path
      res_path:
        value: base.res_path
      cast_list_path:
        value: base.cast_list_path
      entity_ban:
        value: base.entity_ban
      start_pos_type:
        value: base.start_pos_type
      start_offset:
        value: base.start_offset
      need_xz_euler:
        value: base.need_xz_euler
      need_y_euler:
        value: base.need_y_euler
      keep_camera:
        value: base.keep_camera
      use_target_pos:
        value: base.use_target_pos
      target_pos:
        value: base.target_pos
      modify_last_pose_offset:
        value: base.modify_last_pose_offset
      attack_mode_recover:
        value: base.attack_mode_recover
      crowd_lod0list:
        value: base.crowd_lod0list
      enable_camera_displacement:
        value: base.enable_camera_displacement
      entity_runtime_id:
        value: base.entity_runtime_id
      clear_avatar_local_gadget:
        value: base.clear_avatar_local_gadget
