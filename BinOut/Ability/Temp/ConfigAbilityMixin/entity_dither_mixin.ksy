meta:
  id: entity_dither_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: dither_value
    type: f4
    if: has_field_dither_value
  - id: cut_in_time
    type: f4
    if: has_field_cut_in_time
  - id: cut_out_time
    type: f4
    if: has_field_cut_out_time
instances:
  has_field_predicates: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_dither_value: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_cut_in_time: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_cut_out_time: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
