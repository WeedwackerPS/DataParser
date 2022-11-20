meta:
  id: wind_zone_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../EnumType/enum__target_type
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: shape_name
    type: aux_types::string
    if: has_field_shape_name
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: strength
    type: aux_types::dynamic_float
    if: has_field_strength
  - id: attenuation
    type: aux_types::dynamic_float
    if: has_field_attenuation
  - id: inner_radius
    type: aux_types::dynamic_float
    if: has_field_inner_radius
  - id: reverse
    type: u1
    if: has_field_reverse
  - id: target_type
    type: enum__target_type
    if: has_field_target_type
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: max_num
    type: aux_types::vlq_base128_le_u
    if: has_field_max_num
  - id: force_growth
    type: f4
    if: has_field_force_growth
  - id: force_fallen
    type: f4
    if: has_field_force_fallen
  - id: offset
    type: vector
    if: has_field_offset
instances:
  has_field_shape_name: # Field №0
    value: (bit_field.value & 0b0000000000001) != 0
  has_field_born: # Field №1
    value: (bit_field.value & 0b0000000000010) != 0
  has_field_strength: # Field №2
    value: (bit_field.value & 0b0000000000100) != 0
  has_field_attenuation: # Field №3
    value: (bit_field.value & 0b0000000001000) != 0
  has_field_inner_radius: # Field №4
    value: (bit_field.value & 0b0000000010000) != 0
  has_field_reverse: # Field №5
    value: (bit_field.value & 0b0000000100000) != 0
  has_field_target_type: # Field №6
    value: (bit_field.value & 0b0000001000000) != 0
  has_field_predicates: # Field №7
    value: (bit_field.value & 0b0000010000000) != 0
  has_field_modifier_name: # Field №8
    value: (bit_field.value & 0b0000100000000) != 0
  has_field_max_num: # Field №9
    value: (bit_field.value & 0b0001000000000) != 0
  has_field_force_growth: # Field №10
    value: (bit_field.value & 0b0010000000000) != 0
  has_field_force_fallen: # Field №11
    value: (bit_field.value & 0b0100000000000) != 0
  has_field_offset: # Field №12
    value: (bit_field.value & 0b1000000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
