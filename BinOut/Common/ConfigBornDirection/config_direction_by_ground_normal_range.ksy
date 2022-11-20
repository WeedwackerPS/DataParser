meta:
  id: config_direction_by_ground_normal_range
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_born_direction_type
    - ../../../aux_types
seq:
  - id: base
    type: config_born_direction_type
  - id: bit_field
    type: u1
  - id: range
    type: aux_types::vlq_base128_le_u
    if: has_field_range
instances:
  has_field_range: # Field №0
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
