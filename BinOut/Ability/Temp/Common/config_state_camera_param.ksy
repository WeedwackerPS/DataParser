meta:
  id: config_state_camera_param
  endian: le
  license: AGPL-3.0-or-later
seq:
  - id: bit_field
    type: u1
  - id: radius_spring_ratio
    type: f4
    if: has_field_radius_spring_ratio
  - id: combat_elev_with_height_ratio
    type: f4
    if: has_field_combat_elev_with_height_ratio
  - id: force_radius
    type: f4
    if: has_field_force_radius
  - id: force_radius_duration
    type: f4
    if: has_field_force_radius_duration
  - id: should_keep_force_radius
    type: u1
    if: has_field_should_keep_force_radius
instances:
  has_field_radius_spring_ratio: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_combat_elev_with_height_ratio: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_force_radius: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_force_radius_duration: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_should_keep_force_radius: # Field №4
    value: (bit_field & 0b10000) != 0
