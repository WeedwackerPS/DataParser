meta:
  id: enum__ps_activities_category_type
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
    enum: ps_activities_category_type
enums:
  ps_activities_category_type:
    0: progress
    1: open_ended
    2: competitive
    3: challenge
