meta:
  id: enum__fleur_fair_dungeon_stat_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__fleur_fair_dungeon_stat_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: fleur_fair_dungeon_stat_type
enums:
  fleur_fair_dungeon_stat_type:
    0: fleur_fair_dungeon_stat_none
    1: fleur_fair_dungeon_stat_group_variable
    2: fleur_fair_dungeon_stat_monster_hurt
