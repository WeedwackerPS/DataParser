meta:
  id: hit_level_gauge_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__hit_level
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: from_hit_level
    type: enum__hit_level
    if: has_field_from_hit_level
  - id: to_hit_level
    type: enum__hit_level
    if: has_field_to_hit_level
  - id: max_charge
    type: f4
    if: has_field_max_charge
  - id: min_charge_delta
    type: f4
    if: has_field_min_charge_delta
  - id: max_charge_delta
    type: f4
    if: has_field_max_charge_delta
  - id: fade_time
    type: f4
    if: has_field_fade_time
instances:
  has_field_from_hit_level: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_to_hit_level: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_max_charge: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_min_charge_delta: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_max_charge_delta: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_fade_time: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
