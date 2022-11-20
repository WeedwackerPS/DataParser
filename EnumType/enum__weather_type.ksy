meta:
  id: enum__weather_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: weather_type
enums:
  weather_type:
    0: clear_sky
    1: cloudy
    2: foggy
    3: rain
    4: snow
    5: storm
