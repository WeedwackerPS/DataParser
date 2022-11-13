meta:
  id: enum__item_limit_refresh_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__item_limit_refresh_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: item_limit_refresh_type
enums:
  item_limit_refresh_type:
    0: item_limit_refresh_none
    1: item_limit_refresh_daily
    2: item_limit_refresh_monthly
    3: item_limit_refresh_persistent
