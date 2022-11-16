meta:
  id: enum__talk_exec_type
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
    enum: talk_exec_type
enums:
  talk_exec_type:
    0: talk_exec_none
    1: talk_exec_set_gadget_state
    2: talk_exec_set_game_time
    3: talk_exec_notify_group_lua
    4: talk_exec_set_daily_task_var
    5: talk_exec_inc_daily_task_var
    6: talk_exec_dec_daily_task_var
    7: talk_exec_set_quest_var
    8: talk_exec_inc_quest_var
    9: talk_exec_dec_quest_var
    10: talk_exec_set_quest_global_var
    11: talk_exec_inc_quest_global_var
    12: talk_exec_dec_quest_global_var
