meta:
  id: enum__ai_basic_move_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ai_basic_move_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ai_basic_move_type
enums:
  ai_basic_move_type:
    0: straight
    1: snakelike
