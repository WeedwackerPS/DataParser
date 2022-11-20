meta:
  id: by_target_in_area
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__target_position_area_level
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: area_level
    type: enum__target_position_area_level
    if: has_field_area_level
  - id: areas
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_areas
instances:
  has_field_area_level: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_areas: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
