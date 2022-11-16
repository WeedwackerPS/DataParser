meta:
  id: enum__level_day_time_type
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
    enum: level_day_time_type
enums:
  level_day_time_type:
    0: day
    1: night
