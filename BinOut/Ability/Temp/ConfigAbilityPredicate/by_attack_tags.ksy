meta:
  id: by_attack_tags
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
  - id: attack_tags
    type: array_of__aux_types__string__length_u
    if: has_field_attack_tags
instances:
  has_field_attack_tags: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
