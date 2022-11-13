meta:
  id: enum__rogue_monster_pool_difficulty_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__rogue_monster_pool_difficulty_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: rogue_monster_pool_difficulty_type
enums:
  rogue_monster_pool_difficulty_type:
    0: rogue_monster_difficulty_normal
    1: rogue_monster_difficulty_elite_easy
    2: rogue_monster_difficulty_elite_hard
    3: rogue_monster_difficulty_boss
