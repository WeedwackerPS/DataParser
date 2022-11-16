meta:
  id: enum__hunting_refresh_cond_type
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
    enum: hunting_refresh_cond_type
enums:
  hunting_refresh_cond_type:
    0: hunting_refresh_cond_none
    1: hunting_refresh_cond_time
    2: hunting_refresh_cond_weather
