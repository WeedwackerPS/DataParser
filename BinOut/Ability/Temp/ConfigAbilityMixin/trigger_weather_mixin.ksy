meta:
  id: trigger_weather_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__trigger_weather_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__trigger_weather_type
    if: has_field_type
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
  - id: weather_pattern
    type: aux_types::string
    if: has_field_weather_pattern
  - id: trans_duration
    type: f4
    if: has_field_trans_duration
  - id: duration
    type: f4
    if: has_field_duration
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_area_id: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_weather_pattern: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_trans_duration: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_duration: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
