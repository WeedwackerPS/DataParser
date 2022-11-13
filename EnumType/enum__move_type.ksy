meta:
  id: enum__move_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__move_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: move_type
enums:
  move_type:
    0: normal_move
    1: combat_move
    2: combat_air
    3: combat_skill_air
    4: perform_move
