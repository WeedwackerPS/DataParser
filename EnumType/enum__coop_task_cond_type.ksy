meta:
  id: enum__coop_task_cond_type
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
    enum: coop_task_cond_type
enums:
  coop_task_cond_type:
    0: coop_cond_none
    1: coop_cond_finish_quest
    2: coop_cond_player_level
    3: coop_cond_coop_point_finish
    4: coop_cond_avatar_fetter_level
    5: coop_cond_chapter_end_all_finish
    6: coop_cond_chapter_end_finish_count
