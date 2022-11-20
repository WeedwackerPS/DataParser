meta:
  id: override_monster_move_speed_ratio_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: min_value
    type: f4
    if: has_field_min_value
  - id: max_value
    type: f4
    if: has_field_max_value
instances:
  has_field_min_value: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_max_value: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
