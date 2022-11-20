meta:
  id: enum__fleur_fair_mini_game_type
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
    enum: fleur_fair_mini_game_type
enums:
  fleur_fair_mini_game_type:
    0: fleur_fair_mini_game_none
    1: fleur_fair_mini_game_balloon
    2: fleur_fair_mini_game_fall
    3: fleur_fair_mini_game_music
