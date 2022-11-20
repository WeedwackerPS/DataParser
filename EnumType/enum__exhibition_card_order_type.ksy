meta:
  id: enum__exhibition_card_order_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: exhibition_card_order_type
enums:
  exhibition_card_order_type:
    0: exhibition_card_order_none
    1: exhibition_card_order_less_better
    2: exhibition_card_order_greater_better
