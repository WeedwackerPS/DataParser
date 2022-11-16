meta:
  id: enum__shop_recommend_tag_type
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
    enum: shop_recommend_tag_type
enums:
  shop_recommend_tag_type:
    0: shop_recommend_tag_type_none
    1: shop_recommend_tag_type_limittime
    2: shop_recommend_tag_type_discount
    3: shop_recommend_tag_type_new
