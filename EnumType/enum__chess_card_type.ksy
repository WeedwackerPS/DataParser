meta:
  id: enum__chess_card_type
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
    enum: chess_card_type
enums:
  chess_card_type:
    0: chess_card_curse
    1: chess_card_mechanism
    2: chess_card_challenge
    3: chess_card_strengthen
