meta:
  id: being_hit_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: to_attacker
    type: array_of__disp__config_ability_action__length_u
    if: has_field_to_attacker
  - id: to_attacker_owner
    type: array_of__disp__config_ability_action__length_u
    if: has_field_to_attacker_owner
  - id: to_attacker_origin_owner
    type: array_of__disp__config_ability_action__length_u
    if: has_field_to_attacker_origin_owner
instances:
  has_field_to_attacker: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_to_attacker_owner: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_to_attacker_origin_owner: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
