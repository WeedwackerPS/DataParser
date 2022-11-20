meta:
  id: enum__e_footprint_platform
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
    enum: e_footprint_platform
enums:
  e_footprint_platform:
    0: all
    1: all_no_tessellation
    2: pc_no_tessellation
    3: pc
    4: android
    5: ios
    6: ps4
    7: ps
