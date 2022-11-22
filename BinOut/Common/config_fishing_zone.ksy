meta:
  id: config_fishing_zone
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_polygon_zone
seq:
  - id: base
    type: config_polygon_zone
  - id: bit_field
    type: u1
  - id: valid_radius
    type: f4
    if: has_field_valid_radius
  - id: flee_radius
    type: f4
    if: has_field_flee_radius
  - id: disable_in_multiplayer
    type: u1
    if: has_field_disable_in_multiplayer
  - id: born_radius
    type: f4
    if: has_field_born_radius
instances:
  has_field_valid_radius: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_flee_radius: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_disable_in_multiplayer: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_born_radius: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  check_cd:
    value: base.check_cd
