meta:
  id: enum__card_fortune_type
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
    enum: card_fortune_type
enums:
  card_fortune_type:
    0: chess_cardfortune_bad
    1: chess_cardfortune_normal
    2: chess_cardfortune_good
    3: chess_cardfortune_verygood
    4: chess_cardfortune_perfect
