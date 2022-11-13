meta:
  id: enum__chess_card_numerical_modification_mode
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__chess_card_numerical_modification_mode:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: chess_card_numerical_modification_mode
enums:
  chess_card_numerical_modification_mode:
    0: card_numerical_default_mode
    1: card_numerical_base
    2: card_numerical_percentage
