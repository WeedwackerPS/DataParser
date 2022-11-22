types:
  config_pickup:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: pick_type
        type: enum__pick_type
        if: has_field_pick_type
      - id: is_static
        type: u1
        if: has_field_is_static
      - id: drop_point_max_yaw
        type: f4
        if: has_field_drop_point_max_yaw
      - id: drop_point_min_speed
        type: f4
        if: has_field_drop_point_min_speed
      - id: drop_point_max_speed
        type: f4
        if: has_field_drop_point_max_speed
      - id: born_effect
        type: aux_types::string
        if: has_field_born_effect
      - id: drop_effect
        type: aux_types::string
        if: has_field_drop_effect
      - id: drop_offset
        type: vector
        if: has_field_drop_offset
      - id: enable_scan
        type: u1
        if: has_field_enable_scan
      - id: lock_ymove
        type: u1
        if: has_field_lock_ymove
      - id: suspend_height
        type: f4
        if: has_field_suspend_height
      - id: suspend_speed
        type: f4
        if: has_field_suspend_speed
      - id: suspend_amplitude
        type: f4
        if: has_field_suspend_amplitude
      - id: rotate_speed
        type: f4
        if: has_field_rotate_speed
      - id: rotate_vec
        type: vector
        if: has_field_rotate_vec
      - id: attract_delay_time
        type: f4
        if: has_field_attract_delay_time
      - id: multi
        type: config_pickup_multi
        if: has_field_multi
      - id: dir_vec
        type: vector
        if: has_field_dir_vec
      - id: gravity_ration
        type: f4
        if: has_field_gravity_ration
      - id: disable_init_jump
        type: u1
        if: has_field_disable_init_jump
      - id: init_back_speed
        type: f4
        if: has_field_init_back_speed
      - id: back_decelerate
        type: f4
        if: has_field_back_decelerate
      - id: back_fan_angle
        type: f4
        if: has_field_back_fan_angle
      - id: back_fan_start_angle
        type: f4
        if: has_field_back_fan_start_angle
      - id: rebound_times
        type: aux_types::vlq_base128_le_s
        if: has_field_rebound_times
      - id: rebound_ration
        type: f4
        if: has_field_rebound_ration
      - id: attract_accelerate
        type: f4
        if: has_field_attract_accelerate
      - id: attract_max_distance
        type: f4
        if: has_field_attract_max_distance
      - id: height_offset
        type: f4
        if: has_field_height_offset
      - id: rotate_decelerate
        type: vector
        if: has_field_rotate_decelerate
      - id: attract_audio
        type: aux_types::string
        if: has_field_attract_audio
    instances:
      has_field_pick_type: # Field №0
        value: (bit_field.value & 000000000000000000000001) != 0
      has_field_is_static: # Field №1
        value: (bit_field.value & 000000000000000000000010) != 0
      has_field_drop_point_max_yaw: # Field №2
        value: (bit_field.value & 000000000000000000000100) != 0
      has_field_drop_point_min_speed: # Field №3
        value: (bit_field.value & 000000000000000000001000) != 0
      has_field_drop_point_max_speed: # Field №4
        value: (bit_field.value & 000000000000000000010000) != 0
      has_field_born_effect: # Field №5
        value: (bit_field.value & 000000000000000000100000) != 0
      has_field_drop_effect: # Field №6
        value: (bit_field.value & 000000000000000001000000) != 0
      has_field_drop_offset: # Field №7
        value: (bit_field.value & 000000000000000010000000) != 0
      has_field_enable_scan: # Field №8
        value: (bit_field.value & 000000000000000100000000) != 0
      has_field_lock_ymove: # Field №9
        value: (bit_field.value & 000000000000001000000000) != 0
      has_field_suspend_height: # Field №10
        value: (bit_field.value & 000000000000010000000000) != 0
      has_field_suspend_speed: # Field №11
        value: (bit_field.value & 000000000000100000000000) != 0
      has_field_suspend_amplitude: # Field №12
        value: (bit_field.value & 000000000001000000000000) != 0
      has_field_rotate_speed: # Field №13
        value: (bit_field.value & 000000000010000000000000) != 0
      has_field_rotate_vec: # Field №14
        value: (bit_field.value & 000000000100000000000000) != 0
      has_field_attract_delay_time: # Field №15
        value: (bit_field.value & 000000001000000000000000) != 0
      has_field_multi: # Field №16
        value: (bit_field.value & 000000010000000000000000) != 0
      has_field_dir_vec: # Field №17
        value: (bit_field.value & 000000100000000000000000) != 0
      has_field_gravity_ration: # Field №18
        value: (bit_field.value & 000001000000000000000000) != 0
      has_field_disable_init_jump: # Field №19
        value: (bit_field.value & 000010000000000000000000) != 0
      has_field_init_back_speed: # Field №20
        value: (bit_field.value & 000100000000000000000000) != 0
      has_field_back_decelerate: # Field №21
        value: (bit_field.value & 001000000000000000000000) != 0
      has_field_back_fan_angle: # Field №22
        value: (bit_field.value & 010000000000000000000000) != 0
      has_field_back_fan_start_angle: # Field №23
        value: (bit_field.value & 0b0000000100000000000000000000000) != 0
      has_field_rebound_times: # Field №24
        value: (bit_field.value & 0b0000001000000000000000000000000) != 0
      has_field_rebound_ration: # Field №25
        value: (bit_field.value & 0b0000010000000000000000000000000) != 0
      has_field_attract_accelerate: # Field №26
        value: (bit_field.value & 0b0000100000000000000000000000000) != 0
      has_field_attract_max_distance: # Field №27
        value: (bit_field.value & 0b0001000000000000000000000000000) != 0
      has_field_height_offset: # Field №28
        value: (bit_field.value & 0b0010000000000000000000000000000) != 0
      has_field_rotate_decelerate: # Field №29
        value: (bit_field.value & 0b0100000000000000000000000000000) != 0
      has_field_attract_audio: # Field №30
        value: (bit_field.value & 0b1000000000000000000000000000000) != 0
