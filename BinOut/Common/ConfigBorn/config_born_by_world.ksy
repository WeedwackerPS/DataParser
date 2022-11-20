meta:
  id: config_born_by_world
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_born_type
    - ../vector
seq:
  - id: base
    type: config_born_type
  - id: bit_field
    type: u1
  - id: world_pos
    type: vector
    if: has_field_world_pos
  - id: world_fwd
    type: vector
    if: has_field_world_fwd
instances:
  has_field_world_pos: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_world_fwd: # Field №1
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
