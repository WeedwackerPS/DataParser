meta:
  id: config_born_by_global_value
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_born_type
    - ../../../aux_types
seq:
  - id: base
    type: config_born_type
  - id: bit_field
    type: u1
  - id: position_key
    type: aux_types::string
    if: has_field_position_key
  - id: direction_key
    type: aux_types::string
    if: has_field_direction_key
  - id: use_global_up
    type: u1
    if: has_field_use_global_up
instances:
  has_field_position_key: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_direction_key: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_use_global_up: # Field №2
    value: (bit_field & 0b100) != 0
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
