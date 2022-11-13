meta:
  id: enum__guide_platform
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_platform:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_platform
enums:
  guide_platform:
    0: none
    1: i_os
    2: standalone
    3: android
    4: ps4
    5: switch
