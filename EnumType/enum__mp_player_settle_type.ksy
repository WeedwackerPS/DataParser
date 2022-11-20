meta:
  id: enum__mp_player_settle_type
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
    enum: mp_player_settle_type
enums:
  mp_player_settle_type:
    0: mp_play_settle_type_none
    1: mp_play_settle_type_watcher_finish
    2: mp_play_settle_type_watcher_progress
    3: mp_play_settle_type_monster_take_demage
    4: mp_play_settle_type_monster_kill_num
    5: mp_play_settle_type_monster_killer
