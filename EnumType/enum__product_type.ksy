meta:
  id: enum__product_type
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
    enum: product_type
enums:
  product_type:
    0: product_type_none
    1: product_type_hcoin
    2: product_type_card
    3: product_type_package
    4: product_type_play
    5: product_type_google_gift_card
    6: product_type_concert
    7: product_type_apple_gift_card
