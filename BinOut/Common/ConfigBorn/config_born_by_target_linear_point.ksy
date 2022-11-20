meta:
  id: config_born_by_target_linear_point
  endian: le
  license: GPLv2
  imports:
    - config_born_type
    - ../../../aux_types
seq:
  - id: base
    type: config_born_type
  - id: bit_field
    type: u1
  - id: linear_offset
    type: aux_types::dynamic_float
    if: has_field_linear_offset
  - id: base_on_target
    type: u1
    if: has_field_base_on_target
  - id: linear_xz
    type: u1
    if: has_field_linear_xz
  - id: linear_min
    type: aux_types::dynamic_float
    if: has_field_linear_min
  - id: linear_max
    type: aux_types::dynamic_float
    if: has_field_linear_max
instances:
  has_field_linear_offset: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_base_on_target: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_linear_xz: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_linear_min: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_linear_max: # Field №4
    value: (bit_field & 0b10000) != 0
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
