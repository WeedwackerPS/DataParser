meta:
  id: enum__rot_angle_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: rot_angle_type
enums:
  rot_angle_type:
    0: rot_angle_x
    1: rot_angle_y
    2: rot_angle_z
