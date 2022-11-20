meta:
  id: config_direction_by_attack_target
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_born_direction_type
seq:
  - id: base
    type: config_born_direction_type
  - id: bit_field
    type: u1
  - id: speed_for_predictive
    type: f4
    if: has_field_speed_for_predictive
  - id: scatter
    type: direction_tar_distance_scatter
    if: has_field_scatter
instances:
  has_field_speed_for_predictive: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_scatter: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  angle_offset:
    value: base.angle_offset
  angle_offset_correct:
    value: base.angle_offset_correct
  use_correct_dir:
    value: base.use_correct_dir
  random_angle_hor:
    value: base.random_angle_hor
  random_angle_ver:
    value: base.random_angle_ver
  max_angle_type:
    value: base.max_angle_type
  max_angle:
    value: base.max_angle
types:
  direction_tar_distance_scatter:
    seq:
      - id: bit_field
        type: u1
      - id: max_distance
        type: f4
        if: has_field_max_distance
      - id: max_scatter_angle
        type: f4
        if: has_field_max_scatter_angle
      - id: center_rote
        type: f4
        if: has_field_center_rote
      - id: random_rote
        type: f4
        if: has_field_random_rote
    instances:
      has_field_max_distance: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_max_scatter_angle: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_center_rote: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_random_rote: # Field №3
        value: (bit_field & 0b1000) != 0
