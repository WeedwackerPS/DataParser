meta:
  id: config_born_by_rush_to_point
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_born_type
seq:
  - id: base
    type: config_born_type
instances:
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
