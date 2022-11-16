meta:
  id: enum__shop_recommend_tab_type
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
    enum: shop_recommend_tab_type
enums:
  shop_recommend_tab_type:
    0: recommend_one
    1: recommend_col
    2: recommend_item
    3: recommend_jump
    4: recommend_package
