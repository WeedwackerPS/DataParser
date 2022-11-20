meta:
  id: config_born_by_attach_point
  endian: le
  license: GPLv2
  imports:
    - config_born_type
    - ../../../aux_types
    - ../../../EnumType/enum__attach_point_target_type
seq:
  - id: base
    type: config_born_type
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
  offset:
    value: base.offset
  born_random:
    value: base.born_random
  on_ground:
    value: base.on_ground
  on_ground_ignore_water:
    value: base.on_ground_ignore_water
  on_ground_raycast_up_dist:
    value: base.on_ground_raycast_up_dist
  direction:
    value: base.direction
  along_ground:
    value: base.along_ground
  use_rotation:
    value: base.use_rotation
