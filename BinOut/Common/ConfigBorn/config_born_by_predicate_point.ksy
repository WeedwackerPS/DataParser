meta:
  id: config_born_by_predicate_point
  endian: le
  license: GPLv2
  imports:
    - config_born_type
seq:
  - id: base
    type: config_born_type
  - id: bit_field
    type: u1
  - id: time_for_predictive
    type: f4
    if: has_field_time_for_predictive
instances:
  has_field_time_for_predictive: # Field №0
    value: (bit_field & 0b1) != 0
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
