meta:
  id: enum__climate_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__climate_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: climate_type
enums:
  climate_type:
    0: climate_none
    1: climate_sunny
    2: climate_cloudy
    3: climate_rain
    4: climate_thunderstorm
    5: climate_snow
    6: climate_mist
