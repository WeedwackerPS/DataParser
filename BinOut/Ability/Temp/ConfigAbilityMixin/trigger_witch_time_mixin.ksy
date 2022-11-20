meta:
  id: trigger_witch_time_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__target_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: ignore_target_type
    type: enum__target_type
    if: has_field_ignore_target_type
  - id: timescale
    type: f4
    if: has_field_timescale
  - id: duration
    type: f4
    if: has_field_duration
  - id: use_max
    type: u1
    if: has_field_use_max
  - id: enable_effect
    type: u1
    if: has_field_enable_effect
  - id: enable_delay
    type: u1
    if: has_field_enable_delay
  - id: delay_time_scale
    type: f4
    if: has_field_delay_time_scale
  - id: delay_duration
    type: f4
    if: has_field_delay_duration
  - id: open_effect_pattern
    type: aux_types::string
    if: has_field_open_effect_pattern
  - id: close_effect_pattern
    type: aux_types::string
    if: has_field_close_effect_pattern
  - id: weather_pattern
    type: aux_types::string
    if: has_field_weather_pattern
instances:
  has_field_ignore_target_type: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_timescale: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_duration: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_use_max: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_enable_effect: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_enable_delay: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_delay_time_scale: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_delay_duration: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_open_effect_pattern: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_close_effect_pattern: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_weather_pattern: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
