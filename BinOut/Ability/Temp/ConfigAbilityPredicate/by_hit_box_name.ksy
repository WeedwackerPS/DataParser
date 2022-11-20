meta:
  id: by_hit_box_name
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: hit_box_names
    type: array_of__aux_types__string__length_u
    if: has_field_hit_box_names
instances:
  has_field_hit_box_names: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
