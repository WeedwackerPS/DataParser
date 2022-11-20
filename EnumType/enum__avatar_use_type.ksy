meta:
  id: enum__avatar_use_type
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
    enum: avatar_use_type
enums:
  avatar_use_type:
    0: avatar_test
    1: avatar_sync_test
    2: avatar_formal
    3: avatar_abandon
