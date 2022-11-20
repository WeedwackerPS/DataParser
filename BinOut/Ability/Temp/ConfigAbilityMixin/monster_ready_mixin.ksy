meta:
  id: monster_ready_mixin
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
  - id: on_monster_ready
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_monster_ready
instances:
  has_field_on_monster_ready: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
