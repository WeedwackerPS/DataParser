meta:
  id: enum__mechanicus_card_type
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
    enum: mechanicus_card_type
enums:
  mechanicus_card_type:
    0: mechanicus_card_none
    1: mechanicus_card_buff
    2: mechanicus_card_curse
    3: mechanicus_card_challenge
