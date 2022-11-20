meta:
  id: enum__fleur_fair_dungeon_stat_method
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: fleur_fair_dungeon_stat_method
enums:
  fleur_fair_dungeon_stat_method:
    0: fleur_fair_dungeon_stat_method_none
    1: fleur_fair_dungeon_stat_method_maximum
    2: fleur_fair_dungeon_stat_method_minimum
