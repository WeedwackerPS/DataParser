meta:
  id: enum__dungeon_play_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: dungeon_play_type
enums:
  dungeon_play_type:
    0: dungeon_play_type_none
    1: dungeon_play_type_foggy_maze
    2: dungeon_play_type_trial_avatar
    3: dungeon_play_type_mist_trial
