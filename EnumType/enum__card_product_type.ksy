meta:
  id: enum__card_product_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__card_product_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: card_product_type
enums:
  card_product_type:
    0: card_product_type_invalid
    1: card_product_type_hcoin
    2: card_product_type_resin
