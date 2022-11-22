meta:
  id: config_route
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__rot_angle_type
    - ../../EnumType/enum__rot_type
    - ../../EnumType/enum__route_type
    - vector
seq:
  - id: bit_field
    type: u1
  - id: local_id
    type: aux_types::vlq_base128_le_u
    if: has_field_local_id
  - id: name
    type: aux_types::string
    if: has_field_name
  - id: type
    type: enum__route_type
    if: has_field_type
  - id: is_forward
    type: u1
    if: has_field_is_forward
  - id: points
    type: array_of__config_waypoint__length_u
    if: has_field_points
  - id: rot_type
    type: enum__rot_type
    if: has_field_rot_type
  - id: rot_angle_type
    type: enum__rot_angle_type
    if: has_field_rot_angle_type
  - id: arrive_range
    type: f4
    if: has_field_arrive_range
instances:
  has_field_local_id: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_name: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_type: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_is_forward: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_points: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_rot_type: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_rot_angle_type: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_arrive_range: # Field №7
    value: (bit_field & 0b10000000) != 0
types:
  array_of__config_waypoint__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_waypoint
        repeat: expr
        repeat-expr: length.value
  config_waypoint:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: pos
        type: vector
        if: has_field_pos
      - id: wait_time
        type: f4
        if: has_field_wait_time
      - id: move_angular_speed
        type: f4
        if: has_field_move_angular_speed
      - id: wait_angular_speed
        type: f4
        if: has_field_wait_angular_speed
      - id: move_rotate_round
        type: f4
        if: has_field_move_rotate_round
      - id: wait_rotate_round
        type: f4
        if: has_field_wait_rotate_round
      - id: stop_wait_rotate
        type: u1
        if: has_field_stop_wait_rotate
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: target_velocity
        type: f4
        if: has_field_target_velocity
      - id: has_reach_event
        type: u1
        if: has_field_has_reach_event
      - id: rot_angle_move_speed
        type: f4
        if: has_field_rot_angle_move_speed
      - id: rot_angle_wait_speed
        type: f4
        if: has_field_rot_angle_wait_speed
      - id: rot_angle_same_stop
        type: u1
        if: has_field_rot_angle_same_stop
      - id: rot_round_reach_dir
        type: vector
        if: has_field_rot_round_reach_dir
      - id: rot_round_reach_rounds
        type: aux_types::vlq_base128_le_s
        if: has_field_rot_round_reach_rounds
      - id: rot_round_leave_dir
        type: vector
        if: has_field_rot_round_leave_dir
      - id: rot_round_wait_rounds
        type: aux_types::vlq_base128_le_s
        if: has_field_rot_round_wait_rounds
      - id: reach_stop
        type: u1
        if: has_field_reach_stop
    instances:
      has_field_pos: # Field №0
        value: (bit_field.value & 0b000000000000000001) != 0
      has_field_wait_time: # Field №1
        value: (bit_field.value & 0b000000000000000010) != 0
      has_field_move_angular_speed: # Field №2
        value: (bit_field.value & 0b000000000000000100) != 0
      has_field_wait_angular_speed: # Field №3
        value: (bit_field.value & 0b000000000000001000) != 0
      has_field_move_rotate_round: # Field №4
        value: (bit_field.value & 0b000000000000010000) != 0
      has_field_wait_rotate_round: # Field №5
        value: (bit_field.value & 0b000000000000100000) != 0
      has_field_stop_wait_rotate: # Field №6
        value: (bit_field.value & 0b000000000001000000) != 0
      has_field_speed_level: # Field №7
        value: (bit_field.value & 0b000000000010000000) != 0
      has_field_target_velocity: # Field №8
        value: (bit_field.value & 0b000000000100000000) != 0
      has_field_has_reach_event: # Field №9
        value: (bit_field.value & 0b000000001000000000) != 0
      has_field_rot_angle_move_speed: # Field №10
        value: (bit_field.value & 0b000000010000000000) != 0
      has_field_rot_angle_wait_speed: # Field №11
        value: (bit_field.value & 0b000000100000000000) != 0
      has_field_rot_angle_same_stop: # Field №12
        value: (bit_field.value & 0b000001000000000000) != 0
      has_field_rot_round_reach_dir: # Field №13
        value: (bit_field.value & 0b000010000000000000) != 0
      has_field_rot_round_reach_rounds: # Field №14
        value: (bit_field.value & 0b000100000000000000) != 0
      has_field_rot_round_leave_dir: # Field №15
        value: (bit_field.value & 0b001000000000000000) != 0
      has_field_rot_round_wait_rounds: # Field №16
        value: (bit_field.value & 0b010000000000000000) != 0
      has_field_reach_stop: # Field №17
        value: (bit_field.value & 0b100000000000000000) != 0
