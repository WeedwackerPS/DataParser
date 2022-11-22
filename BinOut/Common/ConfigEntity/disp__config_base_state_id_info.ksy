meta:
  id: disp__config_base_state_id_info
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../DictType/dict_of__aux_types__string_array_of__aux_types__string__length_u
    - ../../../EnumType/enum__action_panel_state
    - ../../../EnumType/enum__move_type
    - ../../../EnumType/enum__state_camera_type
    - array_of__config_can_change_avatar__length_u
    - array_of__config_equip_reattach__length_u
    - ../../Ability/Temp/Common/config_state_camera_param
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_base_state_id_info
        1: config_normal_state_id_info
        2: config_avatar_state_id_info
        3: config_monster_state_id_info
        4: config_npc_state_id_info
        _: aux_types::error
types:
  config_avatar_state_id_info:
    seq:
      - id: base
        type: config_normal_state_id_info
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: camera_type
        type: enum__state_camera_type
        if: has_field_camera_type
      - id: camera_param
        type: config_state_camera_param
        if: has_field_camera_param
      - id: can_change_avatar
        type: array_of__config_can_change_avatar__length_u
        if: has_field_can_change_avatar
      - id: can_support_change
        type: u1
        if: has_field_can_support_change
      - id: action_panel_state
        type: enum__action_panel_state
        if: has_field_action_panel_state
      - id: equip_reattach
        type: array_of__config_equip_reattach__length_u
        if: has_field_equip_reattach
      - id: jump_cancel_start
        type: f4
        if: has_field_jump_cancel_start
      - id: jump_cancel_end
        type: f4
        if: has_field_jump_cancel_end
      - id: sprint_cancel_start
        type: f4
        if: has_field_sprint_cancel_start
      - id: sprint_cancel_end
        type: f4
        if: has_field_sprint_cancel_end
      - id: fly_cancel_start
        type: f4
        if: has_field_fly_cancel_start
      - id: fly_cancel_end
        type: f4
        if: has_field_fly_cancel_end
      - id: animator_trigger_on_landed
        type: aux_types::string
        if: has_field_animator_trigger_on_landed
      - id: battou_on_start
        type: u1
        if: has_field_battou_on_start
      - id: sheathe_on_start
        type: u1
        if: has_field_sheathe_on_start
      - id: sheathe_on_end
        type: u1
        if: has_field_sheathe_on_end
    instances:
      has_field_camera_type: # Field №0
        value: (bit_field.value & 0b0000000000000001) != 0
      has_field_camera_param: # Field №1
        value: (bit_field.value & 0b0000000000000010) != 0
      has_field_can_change_avatar: # Field №2
        value: (bit_field.value & 0b0000000000000100) != 0
      has_field_can_support_change: # Field №3
        value: (bit_field.value & 0b0000000000001000) != 0
      has_field_action_panel_state: # Field №4
        value: (bit_field.value & 0b0000000000010000) != 0
      has_field_equip_reattach: # Field №5
        value: (bit_field.value & 0b0000000000100000) != 0
      has_field_jump_cancel_start: # Field №6
        value: (bit_field.value & 0b0000000001000000) != 0
      has_field_jump_cancel_end: # Field №7
        value: (bit_field.value & 0b0000000010000000) != 0
      has_field_sprint_cancel_start: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_sprint_cancel_end: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_fly_cancel_start: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_fly_cancel_end: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_animator_trigger_on_landed: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_battou_on_start: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_sheathe_on_start: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_sheathe_on_end: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
      # Base class fields
      animator_states:
        value: base.animator_states
      move_type:
        value: base.move_type
      combat_move_on_water:
        value: base.combat_move_on_water
      can_do_skill:
        value: base.can_do_skill
      can_do_skill_start:
        value: base.can_do_skill_start
      can_do_skill_end:
        value: base.can_do_skill_end
      can_sync_move:
        value: base.can_sync_move
      culling_model_always_animate:
        value: base.culling_model_always_animate
      add_endure:
        value: base.add_endure
      mass_ratio:
        value: base.mass_ratio
      reset_animator_trigger_on_enter:
        value: base.reset_animator_trigger_on_enter
      reset_animator_trigger_on_exit:
        value: base.reset_animator_trigger_on_exit
      set_animator_boolean:
        value: base.set_animator_boolean
      set_animator_float:
        value: base.set_animator_float
      enable_rag_doll:
        value: base.enable_rag_doll
      need_face_to_anim_param:
        value: base.need_face_to_anim_param
      enable_ccd:
        value: base.enable_ccd
      priority:
        value: base.priority
  config_base_state_id_info:
    seq:
      - id: bit_field
        type: u1
      - id: priority
        type: aux_types::vlq_base128_le_s
        if: has_field_priority
    instances:
      has_field_priority: # Field №0
        value: (bit_field & 0b1) != 0
  config_monster_state_id_info:
    seq:
      - id: base
        type: config_normal_state_id_info
      - id: bit_field
        type: u1
      - id: can_steer
        type: u1
        if: has_field_can_steer
      - id: auto_steer
        type: u1
        if: has_field_auto_steer
      - id: follow_anim_rotation
        type: u1
        if: has_field_follow_anim_rotation
      - id: gravity_adjust_scale
        type: f4
        if: has_field_gravity_adjust_scale
      - id: force_set_air_move
        type: u1
        if: has_field_force_set_air_move
      - id: remote_force_use_animator_vel
        type: u1
        if: has_field_remote_force_use_animator_vel
      - id: is_blend_move
        type: u1
        if: has_field_is_blend_move
      - id: air_move_follow_animation
        type: u1
        if: has_field_air_move_follow_animation
    instances:
      has_field_can_steer: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_auto_steer: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_follow_anim_rotation: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_gravity_adjust_scale: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_force_set_air_move: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_remote_force_use_animator_vel: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_is_blend_move: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_air_move_follow_animation: # Field №7
        value: (bit_field & 0b10000000) != 0
      # Base class fields
      animator_states:
        value: base.animator_states
      move_type:
        value: base.move_type
      combat_move_on_water:
        value: base.combat_move_on_water
      can_do_skill:
        value: base.can_do_skill
      can_do_skill_start:
        value: base.can_do_skill_start
      can_do_skill_end:
        value: base.can_do_skill_end
      can_sync_move:
        value: base.can_sync_move
      culling_model_always_animate:
        value: base.culling_model_always_animate
      add_endure:
        value: base.add_endure
      mass_ratio:
        value: base.mass_ratio
      reset_animator_trigger_on_enter:
        value: base.reset_animator_trigger_on_enter
      reset_animator_trigger_on_exit:
        value: base.reset_animator_trigger_on_exit
      set_animator_boolean:
        value: base.set_animator_boolean
      set_animator_float:
        value: base.set_animator_float
      enable_rag_doll:
        value: base.enable_rag_doll
      need_face_to_anim_param:
        value: base.need_face_to_anim_param
      enable_ccd:
        value: base.enable_ccd
      priority:
        value: base.priority
  config_normal_state_id_info:
    seq:
      - id: base
        type: config_base_state_id_info
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: animator_states
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_animator_states
      - id: move_type
        type: enum__move_type
        if: has_field_move_type
      - id: combat_move_on_water
        type: u1
        if: has_field_combat_move_on_water
      - id: can_do_skill
        type: u1
        if: has_field_can_do_skill
      - id: can_do_skill_start
        type: f4
        if: has_field_can_do_skill_start
      - id: can_do_skill_end
        type: f4
        if: has_field_can_do_skill_end
      - id: can_sync_move
        type: u1
        if: has_field_can_sync_move
      - id: culling_model_always_animate
        type: u1
        if: has_field_culling_model_always_animate
      - id: add_endure
        type: f4
        if: has_field_add_endure
      - id: mass_ratio
        type: f4
        if: has_field_mass_ratio
      - id: reset_animator_trigger_on_enter
        type: array_of__aux_types__string__length_u
        if: has_field_reset_animator_trigger_on_enter
      - id: reset_animator_trigger_on_exit
        type: array_of__aux_types__string__length_u
        if: has_field_reset_animator_trigger_on_exit
      - id: set_animator_boolean
        type: array_of__config_animator_boolean__length_u
        if: has_field_set_animator_boolean
      - id: set_animator_float
        type: array_of__config_animator_float__length_u
        if: has_field_set_animator_float
      - id: enable_rag_doll
        type: u1
        if: has_field_enable_rag_doll
      - id: need_face_to_anim_param
        type: u1
        if: has_field_need_face_to_anim_param
      - id: enable_ccd
        type: u1
        if: has_field_enable_ccd
    instances:
      has_field_animator_states: # Field №0
        value: (bit_field.value & 0b00000000000000001) != 0
      has_field_move_type: # Field №1
        value: (bit_field.value & 0b00000000000000010) != 0
      has_field_combat_move_on_water: # Field №2
        value: (bit_field.value & 0b00000000000000100) != 0
      has_field_can_do_skill: # Field №3
        value: (bit_field.value & 0b00000000000001000) != 0
      has_field_can_do_skill_start: # Field №4
        value: (bit_field.value & 0b00000000000010000) != 0
      has_field_can_do_skill_end: # Field №5
        value: (bit_field.value & 0b00000000000100000) != 0
      has_field_can_sync_move: # Field №6
        value: (bit_field.value & 0b00000000001000000) != 0
      has_field_culling_model_always_animate: # Field №7
        value: (bit_field.value & 0b00000000010000000) != 0
      has_field_add_endure: # Field №8
        value: (bit_field.value & 0b00000000100000000) != 0
      has_field_mass_ratio: # Field №9
        value: (bit_field.value & 0b00000001000000000) != 0
      has_field_reset_animator_trigger_on_enter: # Field №10
        value: (bit_field.value & 0b00000010000000000) != 0
      has_field_reset_animator_trigger_on_exit: # Field №11
        value: (bit_field.value & 0b00000100000000000) != 0
      has_field_set_animator_boolean: # Field №12
        value: (bit_field.value & 0b00001000000000000) != 0
      has_field_set_animator_float: # Field №13
        value: (bit_field.value & 0b00010000000000000) != 0
      has_field_enable_rag_doll: # Field №14
        value: (bit_field.value & 0b00100000000000000) != 0
      has_field_need_face_to_anim_param: # Field №15
        value: (bit_field.value & 0b01000000000000000) != 0
      has_field_enable_ccd: # Field №16
        value: (bit_field.value & 0b10000000000000000) != 0
      # Base class fields
      priority:
        value: base.priority
  config_npc_state_id_info:
    seq:
      - id: base
        type: config_normal_state_id_info
      - id: bit_field
        type: u1
      - id: can_be_inter
        type: u1
        if: has_field_can_be_inter
    instances:
      has_field_can_be_inter: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      animator_states:
        value: base.animator_states
      move_type:
        value: base.move_type
      combat_move_on_water:
        value: base.combat_move_on_water
      can_do_skill:
        value: base.can_do_skill
      can_do_skill_start:
        value: base.can_do_skill_start
      can_do_skill_end:
        value: base.can_do_skill_end
      can_sync_move:
        value: base.can_sync_move
      culling_model_always_animate:
        value: base.culling_model_always_animate
      add_endure:
        value: base.add_endure
      mass_ratio:
        value: base.mass_ratio
      reset_animator_trigger_on_enter:
        value: base.reset_animator_trigger_on_enter
      reset_animator_trigger_on_exit:
        value: base.reset_animator_trigger_on_exit
      set_animator_boolean:
        value: base.set_animator_boolean
      set_animator_float:
        value: base.set_animator_float
      enable_rag_doll:
        value: base.enable_rag_doll
      need_face_to_anim_param:
        value: base.need_face_to_anim_param
      enable_ccd:
        value: base.enable_ccd
      priority:
        value: base.priority
  array_of__config_animator_boolean__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_animator_boolean
        repeat: expr
        repeat-expr: length.value
  config_animator_boolean:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: normalize_start
        type: f4
        if: has_field_normalize_start
      - id: normalize_end
        type: f4
        if: has_field_normalize_end
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_normalize_start: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_normalize_end: # Field №2
        value: (bit_field & 0b100) != 0

  array_of__config_animator_float__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_animator_float
        repeat: expr
        repeat-expr: length.value
  config_animator_float:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: normalize_start
        type: f4
        if: has_field_normalize_start
      - id: normalize_end
        type: f4
        if: has_field_normalize_end
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_normalize_start: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_normalize_end: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_value: # Field №3
        value: (bit_field & 0b1000) != 0
