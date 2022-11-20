meta:
  id: select_action_point_by_target_pos
  endian: le
  license: GPLv2
  imports:
    - config_action_point_select_type
seq:
  - id: base
    type: config_action_point_select_type
  - id: bit_field
    type: u1
  - id: distance
    type: f4
    if: has_field_distance
instances:
  has_field_distance: # Field №0
    value: (bit_field & 0b1) != 0
