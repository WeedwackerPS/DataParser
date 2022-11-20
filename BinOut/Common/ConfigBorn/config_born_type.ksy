meta:
  id: config_born_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../dynamic_float_vector
    - ../Disp/disp__born_random
    - ../Disp/disp__config_born_direction_type
seq:
  - id: bit_field
    type: u1
  - id: offset
    type: dynamic_float_vector
    if: has_field_offset
  - id: born_random
    type: disp__born_random
    if: has_field_born_random
  - id: on_ground
    type: u1
    if: has_field_on_ground
  - id: on_ground_ignore_water
    type: u1
    if: has_field_on_ground_ignore_water
  - id: on_ground_raycast_up_dist
    type: f4
    if: has_field_on_ground_raycast_up_dist
  - id: direction
    type: disp__config_born_direction_type
    if: has_field_direction
  - id: along_ground
    type: u1
    if: has_field_along_ground
  - id: use_rotation
    type: u1
    if: has_field_use_rotation
instances:
  has_field_offset: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_born_random: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_on_ground: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_on_ground_ignore_water: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_on_ground_raycast_up_dist: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_direction: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_along_ground: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_use_rotation: # Field №7
    value: (bit_field & 0b10000000) != 0
