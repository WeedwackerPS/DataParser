meta:
  id: enum__trigger_weather_type
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
    enum: trigger_weather_type
enums:
  trigger_weather_type:
    0: area
    1: weather
    2: skill
