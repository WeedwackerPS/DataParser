meta:
  id: enum__rocket_jump_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__rocket_jump_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: rocket_jump_type
enums:
  rocket_jump_type:
    0: xiao_ult
    1: klee_mine_explode
    2: gear_spring
    3: dungeon_jump
    4: itto_gang_plank
    5: max_value
