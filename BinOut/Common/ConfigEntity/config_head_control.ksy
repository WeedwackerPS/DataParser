meta:
  id: config_head_control
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: u1
  - id: use_head_control
    type: u1
    if: has_field_use_head_control
  - id: max_yaw_degree
    type: f4
    if: has_field_max_yaw_degree
  - id: max_pitch_degree
    type: f4
    if: has_field_max_pitch_degree
  - id: speed
    type: f4
    if: has_field_speed
  - id: weight_speed
    type: f4
    if: has_field_weight_speed
  - id: use_white_anim_states
    type: u1
    if: has_field_use_white_anim_states
  - id: anim_states
    type: array_of__aux_types__string__length_u
    if: has_field_anim_states
  - id: dont_anim_states
    type: array_of__aux_types__string__length_u
    if: has_field_dont_anim_states
instances:
  has_field_use_head_control: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_max_yaw_degree: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_max_pitch_degree: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_speed: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_weight_speed: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_use_white_anim_states: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_anim_states: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_dont_anim_states: # Field №7
    value: (bit_field & 0b10000000) != 0
