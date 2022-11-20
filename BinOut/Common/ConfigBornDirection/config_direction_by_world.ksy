meta:
  id: config_direction_by_world
  endian: le
  license: GPLv2
  imports:
    - config_born_direction_type
    - ../vector
seq:
  - id: base
    type: config_born_direction_type
  - id: bit_field
    type: u1
  - id: eular_angles
    type: vector
    if: has_field_eular_angles
instances:
  has_field_eular_angles: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  angle_offset:
    value: base.angle_offset
  angle_offset_correct:
    value: base.angle_offset_correct
  use_correct_dir:
    value: base.use_correct_dir
  random_angle_hor:
    value: base.random_angle_hor
  random_angle_ver:
    value: base.random_angle_ver
  max_angle_type:
    value: base.max_angle_type
  max_angle:
    value: base.max_angle
