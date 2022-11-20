meta:
  id: ice_floor_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/disp__config_ability_action
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: width
    type: f4
    if: has_field_width
  - id: height
    type: f4
    if: has_field_height
  - id: move_distance
    type: f4
    if: has_field_move_distance
  - id: min_interval
    type: f4
    if: has_field_min_interval
  - id: do_action
    type: disp__config_ability_action
    if: has_field_do_action
instances:
  has_field_width: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_height: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_move_distance: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_min_interval: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_do_action: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
