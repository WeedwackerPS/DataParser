meta:
  id: enum__fish_stock_type
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
    enum: fish_stock_type
enums:
  fish_stock_type:
    0: fish_stock_type_none
    1: fish_stock_type_any
    2: fish_stock_type_day
    3: fish_stock_type_night
