meta:
  id: disp__config_move
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../Ability/Temp/Common/array_of__enum__velocity_force_type__length_u
    - ../../EnumType/enum__facing_move_type
    - ../../EnumType/enum__follow_target
    - ../../EnumType/enum__monster_size_type
    - ../../EnumType/enum__move_platform_delay_type
    - ../../EnumType/enum__position_modify_state
    - ../../EnumType/enum__position_modify_state
    - ../config_route
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_move
        1: config_simple_move
        2: config_rigidbody_move
        3: config_vehicle_move
        4: config_animator_move
        5: config_platform_move
        6: config_scene_prop_animator_move
        7: config_windmill_move
        8: config_bullet_move
        9: config_follow_move
        10: config_boat_move
        11: config_skiff_move
        12: config_npc_move
        13: config_liner_bullet_move
        14: config_animation_bullet_move
        15: config_surround_bullet_move
        16: config_pinball_bullet_move
        17: config_parabola_bullet_move
        18: config_fishing_aim_parabola_bullet_move
        19: config_track_bullet_move
        20: config_itano_circus_bullet_move
        21: config_liner_parabola_bullet_move
        _: aux_types::error
types:
  config_move:
    seq:
      - id: bit_field
        type: u1
      - id: velocity_force
        type: config_move_velocity_force
        if: has_field_velocity_force
      - id: handle_combat_task_immediately
        type: u1
        if: has_field_handle_combat_task_immediately
    instances:
      has_field_velocity_force: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_handle_combat_task_immediately: # Field №1
        value: (bit_field & 0b10) != 0
  config_move_velocity_force:
    seq:
      - id: bit_field
        type: u1
      - id: mute_all
        type: u1
        if: has_field_mute_all
      - id: use_all
        type: u1
        if: has_field_use_all
      - id: include_forces
        type: array_of__enum__velocity_force_type__length_u
        if: has_field_include_forces
      - id: exclude_forces
        type: array_of__enum__velocity_force_type__length_u
        if: has_field_exclude_forces
    instances:
      has_field_mute_all: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_use_all: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_include_forces: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_exclude_forces: # Field №3
        value: (bit_field & 0b1000) != 0
  config_simple_move:
    seq:
      - id: base
        type: config_move
      - id: bit_field
        type: u1
      - id: const_speed_ratio
        type: f4
        if: has_field_const_speed_ratio
      - id: follow_reference_system
        type: u1
        if: has_field_follow_reference_system
    instances:
      has_field_const_speed_ratio: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_follow_reference_system: # Field №1
        value: (bit_field & 0b10) != 0
  config_rigidbody_move:
    seq:
      - id: base
        type: config_move
      - id: bit_field
        type: u1
      - id: const_speed_ratio
        type: f4
        if: has_field_const_speed_ratio
      - id: start_close_to_ground
        type: u1
        if: has_field_start_close_to_ground
      - id: enable_close_to_ground_when_tick
        type: u1
        if: has_field_enable_close_to_ground_when_tick
      - id: follow_reference_system
        type: u1
        if: has_field_follow_reference_system
    instances:
      has_field_const_speed_ratio: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_start_close_to_ground: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_enable_close_to_ground_when_tick: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_follow_reference_system: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      velocity_force:
        value: base.velocity_force
      handle_combat_task_immediately:
        value: base.handle_combat_task_immediately
  config_vehicle_move:
    seq:
      - id: base
        type: config_move
  config_animator_move:
    seq:
      - id: base
        type: config_move
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: init_with_ground_hit_check
        type: u1
        if: has_field_init_with_ground_hit_check
      - id: smoothed_speed
        type: config_move_smoothed_speed
        if: has_field_smoothed_speed
      - id: move_on_ground
        type: u1
        if: has_field_move_on_ground
      - id: move_on_water
        type: u1
        if: has_field_move_on_water
      - id: move_on_water_depth
        type: f4
        if: has_field_move_on_water_depth
      - id: facing_move
        type: enum__facing_move_type
        if: has_field_facing_move
      - id: monster_size_type
        type: enum__monster_size_type
        if: has_field_monster_size_type
      - id: position_modify_state
        type: enum__position_modify_state
        if: has_field_position_modify_state
      - id: position_modify_state_map
        type: dict_of__aux_types__vlq_base128_le_u_enum__position_modify_state
        if: has_field_position_modify_state_map
      - id: destroy_rock_when_init
        type: u1
        if: has_field_destroy_rock_when_init
      - id: yaw_speed_ratio
        type: f4
        if: has_field_yaw_speed_ratio
      - id: velocity_ratio
        type: f4
        if: has_field_velocity_ratio
    instances:
      has_field_init_with_ground_hit_check: # Field №0
        value: (bit_field.value & 0b000000000001) != 0
      has_field_smoothed_speed: # Field №1
        value: (bit_field.value & 0b000000000010) != 0
      has_field_move_on_ground: # Field №2
        value: (bit_field.value & 0b000000000100) != 0
      has_field_move_on_water: # Field №3
        value: (bit_field.value & 0b000000001000) != 0
      has_field_move_on_water_depth: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_facing_move: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_monster_size_type: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_position_modify_state: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_position_modify_state_map: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_destroy_rock_when_init: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_yaw_speed_ratio: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_velocity_ratio: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
  dict_of__aux_types__vlq_base128_le_u_enum__position_modify_state:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_enum__position_modify_state
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_enum__position_modify_state:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: enum__position_modify_state
  config_move_smoothed_speed:
    seq:
      - id: bit_field
        type: u1
      - id: max_speed
        type: f4
        if: has_field_max_speed
      - id: acceleration_xz
        type: f4
        if: has_field_acceleration_xz
      - id: acceleration_y
        type: f4
        if: has_field_acceleration_y
      - id: zeroing_speed_xz
        type: f4
        if: has_field_zeroing_speed_xz
      - id: zeroing_speed_y
        type: f4
        if: has_field_zeroing_speed_y
    instances:
      has_field_max_speed: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_acceleration_xz: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_acceleration_y: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_zeroing_speed_xz: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_zeroing_speed_y: # Field №4
        value: (bit_field & 0b10000) != 0

  config_platform_move:
    seq:
      - id: base
        type: config_move
      - id: bit_field
        type: u1
      - id: avatar_trigger_event_distance
        type: f4
        if: has_field_avatar_trigger_event_distance
      - id: is_moving_water
        type: u1
        if: has_field_is_moving_water
      - id: route
        type: config_route
        if: has_field_route
      - id: delay_type
        type: enum__move_platform_delay_type
        if: has_field_delay_type
    instances:
      has_field_avatar_trigger_event_distance: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_is_moving_water: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_route: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_delay_type: # Field №3
        value: (bit_field & 0b1000) != 0
  config_scene_prop_animator_move:
    seq:
      - id: base
        type: config_move
  config_windmill_move:
    seq:
      - id: base
        type: config_move
  config_bullet_move:
    seq:
      - id: base
        type: config_move
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed
        type: f4
        if: has_field_speed
      - id: max_speed
        type: f4
        if: has_field_max_speed
      - id: min_speed
        type: f4
        if: has_field_min_speed
      - id: angler_velocity
        type: f4
        if: has_field_angler_velocity
      - id: acceleration
        type: f4
        if: has_field_acceleration
      - id: acceleration_time
        type: f4
        if: has_field_acceleration_time
      - id: can_born_in_water
        type: u1
        if: has_field_can_born_in_water
      - id: update_angle
        type: disp__config_bullet_move_angle
        if: has_field_update_angle
      - id: delay
        type: f4
        if: has_field_delay
      - id: stick_to_ground
        type: config_move_stick_to_ground
        if: has_field_stick_to_ground
      - id: sync_to_remote
        type: u1
        if: has_field_sync_to_remote
      - id: blocked_by_monster_radius
        type: f4
        if: has_field_blocked_by_monster_radius
    instances:
      has_field_speed: # Field №0
        value: (bit_field.value & 0b000000000001) != 0
      has_field_max_speed: # Field №1
        value: (bit_field.value & 0b000000000010) != 0
      has_field_min_speed: # Field №2
        value: (bit_field.value & 0b000000000100) != 0
      has_field_angler_velocity: # Field №3
        value: (bit_field.value & 0b000000001000) != 0
      has_field_acceleration: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_acceleration_time: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_can_born_in_water: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_update_angle: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_delay: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_stick_to_ground: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_sync_to_remote: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_blocked_by_monster_radius: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
  config_follow_move:
    seq:
      - id: base
        type: config_move
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: target
        type: enum__follow_target
        if: has_field_target
      - id: group_target_instance_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_target_instance_id
      - id: attach_point
        type: aux_types::string
        if: has_field_attach_point
      - id: follow_rotation
        type: u1
        if: has_field_follow_rotation
      - id: offset
        type: vector
        if: has_field_offset
      - id: forward
        type: vector
        if: has_field_forward
      - id: follow_owner_invisible
        type: u1
        if: has_field_follow_owner_invisible
      - id: fixed_y
        type: f4
        if: has_field_fixed_y
      - id: ignore_collision
        type: config_ignore_collision
        if: has_field_ignore_collision
      - id: move_disable_collision
        type: config_move_disable_collision
        if: has_field_move_disable_collision
      - id: move_audio
        type: config_move_audio
        if: has_field_move_audio
      - id: sync_trans_to_server
        type: u1
        if: has_field_sync_trans_to_server
      - id: sync_interval
        type: f4
        if: has_field_sync_interval
      - id: handle_in_late_tick
        type: u1
        if: has_field_handle_in_late_tick
    instances:
      has_field_target: # Field №0
        value: (bit_field.value & 0b00000000000001) != 0
      has_field_group_target_instance_id: # Field №1
        value: (bit_field.value & 0b00000000000010) != 0
      has_field_attach_point: # Field №2
        value: (bit_field.value & 0b00000000000100) != 0
      has_field_follow_rotation: # Field №3
        value: (bit_field.value & 0b00000000001000) != 0
      has_field_offset: # Field №4
        value: (bit_field.value & 0b00000000010000) != 0
      has_field_forward: # Field №5
        value: (bit_field.value & 0b00000000100000) != 0
      has_field_follow_owner_invisible: # Field №6
        value: (bit_field.value & 0b00000001000000) != 0
      has_field_fixed_y: # Field №7
        value: (bit_field.value & 0b00000010000000) != 0
      has_field_ignore_collision: # Field №8
        value: (bit_field.value & 0b00000100000000) != 0
      has_field_move_disable_collision: # Field №9
        value: (bit_field.value & 0b00001000000000) != 0
      has_field_move_audio: # Field №10
        value: (bit_field.value & 0b00010000000000) != 0
      has_field_sync_trans_to_server: # Field №11
        value: (bit_field.value & 0b00100000000000) != 0
      has_field_sync_interval: # Field №12
        value: (bit_field.value & 0b01000000000000) != 0
      has_field_handle_in_late_tick: # Field №13
        value: (bit_field.value & 0b10000000000000) != 0
  config_boat_move:
    seq:
      - id: base
        type: config_vehicle_move
  config_skiff_move:
    seq:
      - id: base
        type: config_vehicle_move
  config_npc_move:
    seq:
      - id: base
        type: config_animator_move
  config_liner_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
  config_animation_bullet_move:
    seq:
      - id: base
        type: config_bullet_move		
  config_surround_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
      - id: bit_field
        type: u1
      - id: clockwise
        type: u1
        if: has_field_clockwise
      - id: radius
        type: f4
        if: has_field_radius
      - id: trace_on_y_axis
        type: u1
        if: has_field_trace_on_y_axis
      - id: destroy_when_target_die
        type: u1
        if: has_field_destroy_when_target_die
    instances:
      has_field_clockwise: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_radius: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_trace_on_y_axis: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_destroy_when_target_die: # Field №3
        value: (bit_field & 0b1000) != 0		
  config_pinball_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
      - id: bit_field
        type: u1
      - id: radius
        type: f4
        if: has_field_radius
      - id: trace_on_y_axis
        type: u1
        if: has_field_trace_on_y_axis
      - id: destroy_when_target_die
        type: u1
        if: has_field_destroy_when_target_die
      - id: random_back_angle_added
        type: f4
        if: has_field_random_back_angle_added
      - id: rebound_interval
        type: f4
        if: has_field_rebound_interval
      - id: out_of_range_fix_cd
        type: f4
        if: has_field_out_of_range_fix_cd
    instances:
      has_field_radius: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_trace_on_y_axis: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_destroy_when_target_die: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_random_back_angle_added: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_rebound_interval: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_out_of_range_fix_cd: # Field №5
        value: (bit_field & 0b100000) != 0		
  config_parabola_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
      - id: bit_field
        type: u1
      - id: angle_off_hor
        type: f4
        if: has_field_angle_off_hor
      - id: gravity_of_acceleration
        type: f4
        if: has_field_gravity_of_acceleration
      - id: correction
        type: disp__config_move_correction
        if: has_field_correction
    instances:
      has_field_angle_off_hor: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_gravity_of_acceleration: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_correction: # Field №2
        value: (bit_field & 0b100) != 0
  config_fishing_aim_parabola_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
      - id: bit_field
        type: u1
      - id: gravity
        type: f4
        if: has_field_gravity
      - id: init_speed
        type: f4
        if: has_field_init_speed
      - id: global_value_key
        type: aux_types::string
        if: has_field_global_value_key
    instances:
      has_field_gravity: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_init_speed: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_global_value_key: # Field №2
        value: (bit_field & 0b100) != 0
  config_track_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
      - id: bit_field
        type: u1
      - id: destroy_when_target_die
        type: u1
        if: has_field_destroy_when_target_die
      - id: trace_on_y_axis
        type: u1
        if: has_field_trace_on_y_axis
    instances:
      has_field_destroy_when_target_die: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_trace_on_y_axis: # Field №1
        value: (bit_field & 0b10) != 0
  config_itano_circus_bullet_move:
    seq:
      - id: base
        type: config_bullet_move
      - id: bit_field
        type: u1
      - id: itano_circus_start_angler
        type: f4
        if: has_field_itano_circus_start_angler
      - id: destroy_when_target_die
        type: u1
        if: has_field_destroy_when_target_die
      - id: guidance_delay
        type: f4
        if: has_field_guidance_delay
      - id: guidance_speed_change
        type: u1
        if: has_field_guidance_speed_change
      - id: guidance_min_angler_velocity
        type: f4
        if: has_field_guidance_min_angler_velocity
      - id: guidance_duration
        type: f4
        if: has_field_guidance_duration
    instances:
      has_field_itano_circus_start_angler: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_destroy_when_target_die: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_guidance_delay: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_guidance_speed_change: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_guidance_min_angler_velocity: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_guidance_duration: # Field №5
        value: (bit_field & 0b100000) != 0
  config_liner_parabola_bullet_move:
    seq:
      - id: base
        type: config_liner_bullet_move
      - id: bit_field
        type: u1
      - id: straight_range
        type: f4
        if: has_field_straight_range
      - id: gravity_of_acceleration
        type: f4
        if: has_field_gravity_of_acceleration
      - id: air_resistance
        type: f4
        if: has_field_air_resistance
    instances:
      has_field_straight_range: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_gravity_of_acceleration: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_air_resistance: # Field №2
        value: (bit_field & 0b100) != 0
  config_ignore_collision:
    seq:
      - id: bit_field
        type: u1
      - id: self_colliders
        type: array_of__config_entity_collider__length_u
        if: has_field_self_colliders
      - id: target_colliders
        type: array_of__config_entity_collider__length_u
        if: has_field_target_colliders
    instances:
      has_field_self_colliders: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_target_colliders: # Field №1
        value: (bit_field & 0b10) != 0






		