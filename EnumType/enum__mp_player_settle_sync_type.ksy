meta:
  id: enum__mp_player_settle_sync_type
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
    enum: mp_player_settle_sync_type
enums:
  mp_player_settle_sync_type:
    0: mp_play_settle_sync_type_none
    1: mp_play_settle_sync_type_watcher_progress
    2: mp_play_settle_sync_type_mp_group_variable
    3: mp_play_settle_sync_type_statistic_value
