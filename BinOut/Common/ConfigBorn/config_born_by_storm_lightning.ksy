meta:
  id: config_born_by_storm_lightning
  endian: le
  license: GPLv2
  imports:
    - config_born_type
seq:
  - id: base
    type: config_born_type
  - id: bit_field
    type: u1
  - id: hit_height_ratio
    type: f4
    if: has_field_hit_height_ratio
  - id: select_range
    type: f4
    if: has_field_select_range
  - id: max_offset_len
    type: f4
    if: has_field_max_offset_len
  - id: lightning_hit_or_not_ratio
    type: f4
    if: has_field_lightning_hit_or_not_ratio
instances:
  has_field_hit_height_ratio: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_select_range: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_max_offset_len: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_lightning_hit_or_not_ratio: # Field №3
    value: (bit_field & 0b1000) != 0
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
