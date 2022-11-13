meta:
  id: enum__player_die_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__player_die_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: player_die_type
enums:
  player_die_type:
    0: player_die_none
    1: player_die_kill_by_monster
    2: player_die_kill_by_gear
    3: player_die_fall
    4: player_die_drawn
    5: player_die_abyss
