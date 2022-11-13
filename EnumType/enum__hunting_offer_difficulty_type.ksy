meta:
  id: enum__hunting_offer_difficulty_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__hunting_offer_difficulty_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: hunting_offer_difficulty_type
enums:
  hunting_offer_difficulty_type:
    0: hunting_difficulty_easy
    1: hunting_difficulty_medium
    2: hunting_difficulty_hard
