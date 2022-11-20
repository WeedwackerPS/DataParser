meta:
  id: config_direction_by_attach_point
  endian: le
  license: GPLv2
  imports:
    - config_born_direction_type
    - ../../../aux_types
    - ../../../EnumType/enum__attach_point_target_type
seq:
  - id: base
    type: config_born_direction_type
  - id: bit_field
    type: u1
  - id: attach_point_name
    type: aux_types::string
    if: has_field_attach_point_name
  - id: attach_point_target_type
    type: enum__attach_point_target_type
    if: has_field_attach_point_target_type
instances:
  has_field_attach_point_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_attach_point_target_type: # Field №1
    value: (bit_field & 0b10) != 0
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
