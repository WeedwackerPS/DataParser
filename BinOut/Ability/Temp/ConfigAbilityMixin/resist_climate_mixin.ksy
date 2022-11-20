meta:
  id: resist_climate_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__avatar_stage_type
    - ../../../../EnumType/enum__climate_source_type
    - ../../../../EnumType/enum__climate_trend_type
    - ../../../../EnumType/enum__json_climate_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: climate_types
    type: array_of__enum__json_climate_type__length_u
    if: has_field_climate_types
  - id: source
    type: enum__climate_source_type
    if: has_field_source
  - id: trend
    type: enum__climate_trend_type
    if: has_field_trend
  - id: ratio
    type: aux_types::dynamic_float
    if: has_field_ratio
  - id: type
    type: enum__avatar_stage_type
    if: has_field_type
instances:
  has_field_climate_types: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_source: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_trend: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_ratio: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_type: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  array_of__enum__json_climate_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__json_climate_type
        repeat: expr
        repeat-expr: length.value
