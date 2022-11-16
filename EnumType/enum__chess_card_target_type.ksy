meta:
  id: enum__chess_card_target_type
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
    enum: chess_card_target_type
enums:
  chess_card_target_type:
    0: chess_card_target_default
    1: chess_card_target_all
    2: chess_card_target_gadgets
