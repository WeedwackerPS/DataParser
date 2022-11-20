meta:
  id: velocity_detect_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: min_speed
    type: f4
    if: has_field_min_speed
  - id: max_speed
    type: f4
    if: has_field_max_speed
  - id: detect_on_start
    type: u1
    if: has_field_detect_on_start
  - id: on_poseedge
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_poseedge
  - id: on_negedge
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_negedge
instances:
  has_field_min_speed: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_max_speed: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_detect_on_start: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_on_poseedge: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_on_negedge: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
