meta:
  id: enum__config_schedule_platform
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: config_schedule_platform
enums:
  config_schedule_platform:
    0: default_hight
    1: default_lowest
    2: pc
    3: ps4_high
    4: ps4_low
    5: switch
    6: ios_high
    7: ios_medium
    8: ios_low
    9: android_high
    10: android_medium
    11: android_low
