meta:
  id: enum__guide_platform
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
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
