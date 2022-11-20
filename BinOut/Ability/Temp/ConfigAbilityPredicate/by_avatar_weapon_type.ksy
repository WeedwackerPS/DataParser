meta:
  id: by_avatar_weapon_type
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: weapon_types
    type: array_of__aux_types__string__length_u
    if: has_field_weapon_types
instances:
  has_field_weapon_types: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
