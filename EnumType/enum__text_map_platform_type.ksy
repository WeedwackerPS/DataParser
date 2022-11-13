meta:
  id: enum__text_map_platform_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__text_map_platform_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: text_map_platform_type
enums:
  text_map_platform_type:
    0: default
    1: ios
    2: pc
    3: android
    4: ps4
    5: switch
    6: ps5
