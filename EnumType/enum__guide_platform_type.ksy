meta:
  id: enum__guide_platform_type
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
    enum: guide_platform_type
enums:
  guide_platform_type:
    0: platform_ios
    1: platform_android
    2: platform_pc
    3: platform_ps4
