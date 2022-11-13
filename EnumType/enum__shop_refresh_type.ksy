meta:
  id: enum__shop_refresh_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__shop_refresh_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: shop_refresh_type
enums:
  shop_refresh_type:
    0: shop_refresh_none
    1: shop_refresh_monthly
    2: shop_refresh_weekly
    3: shop_refresh_daily
