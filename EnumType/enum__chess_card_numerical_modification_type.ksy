meta:
  id: enum__chess_card_numerical_modification_type
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
    enum: chess_card_numerical_modification_type
enums:
  chess_card_numerical_modification_type:
    0: card_numerical_default_type
    1: card_numerical_attack
    2: card_numerical_mastery
    3: card_numerical_attack_interval
    4: card_numerical_attack_range
