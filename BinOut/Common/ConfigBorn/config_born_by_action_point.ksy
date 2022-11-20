meta:
  id: config_born_by_action_point
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_born_type
    - ../../../EnumType/enum__action_point_type
    - ../Disp/disp__config_action_point_select_type
seq:
  - id: base
    type: config_born_type
  - id: bit_field
    type: u1
  - id: action_point_type
    type: enum__action_point_type
    if: has_field_action_point_type
  - id: select_type
    type: disp__config_action_point_select_type
    if: has_field_select_type
instances:
  has_field_action_point_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_select_type: # Field №1
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
