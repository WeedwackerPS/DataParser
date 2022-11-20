meta:
  id: enum__neuron_name
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
    enum: neuron_name
enums:
  neuron_name:
    0: hit
    1: fear
    2: asleep
    3: awake
    4: weather_bad
    5: weather_clearsky
    6: weather_cloudy
    7: weather_foggy
    8: weather_rain
    9: weather_snow
    10: weather_storm
    11: surround
    12: hungry
    13: block_avatar_landing
    14: preach
    15: supervise
    16: train
    17: dance
    18: make
    19: build
    20: search
    21: sit
    22: threat
    23: invalid
