meta:
  id: box_clamp_wind_zone_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: size
    type: vector
    if: has_field_size
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: attrac_force_strength
    type: f4
    if: has_field_attrac_force_strength
  - id: max_strength_range
    type: f4
    if: has_field_max_strength_range
instances:
  has_field_size: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_born: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_attrac_force_strength: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_max_strength_range: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
