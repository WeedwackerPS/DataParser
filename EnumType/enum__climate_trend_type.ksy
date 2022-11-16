meta:
  id: enum__climate_trend_type
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
    enum: climate_trend_type
enums:
  climate_trend_type:
    0: none
    1: rise
    2: fade
    3: all
