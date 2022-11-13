meta:
  id: enum__trigger_weather_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__trigger_weather_type:
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
