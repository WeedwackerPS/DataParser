meta:
  id: config_born_direction_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__direction_angle_type
    - ../vector
seq:
  - id: bit_field
    type: u1
  - id: angle_offset
    type: vector
    if: has_field_angle_offset
  - id: angle_offset_correct
    type: vector
    if: has_field_angle_offset_correct
  - id: use_correct_dir
    type: u1
    if: has_field_use_correct_dir
  - id: random_angle_hor
    type: f4
    if: has_field_random_angle_hor
  - id: random_angle_ver
    type: f4
    if: has_field_random_angle_ver
  - id: max_angle_type
    type: enum__direction_angle_type
    if: has_field_max_angle_type
  - id: max_angle
    type: f4
    if: has_field_max_angle
instances:
  has_field_angle_offset: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_angle_offset_correct: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_use_correct_dir: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_random_angle_hor: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_random_angle_ver: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_max_angle_type: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_max_angle: # Field №6
    value: (bit_field & 0b1000000) != 0
