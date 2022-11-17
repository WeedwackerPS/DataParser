meta:
  id: weather_template_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__climate_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: template_name
    type: aux_types::string
    if: has_field_template_name
  - id: weather_type
    type: enum__climate_type
    if: has_field_weather_type
  - id: sunny_prob
    type: f4
    if: has_field_sunny_prob
  - id: cloudy_prob
    type: f4
    if: has_field_cloudy_prob
  - id: rain_prob
    type: f4
    if: has_field_rain_prob
  - id: thunderstorm_prob
    type: f4
    if: has_field_thunderstorm_prob
  - id: snow_prob
    type: f4
    if: has_field_snow_prob
  - id: mist_prob
    type: f4
    if: has_field_mist_prob
instances:
  has_field_template_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_weather_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_sunny_prob: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cloudy_prob: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_rain_prob: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_thunderstorm_prob: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_snow_prob: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_mist_prob: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
