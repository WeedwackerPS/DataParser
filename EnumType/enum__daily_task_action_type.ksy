meta:
  id: enum__daily_task_action_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: daily_task_action_type
enums:
  daily_task_action_type:
    0: daily_task_action_none
    1: daily_task_action_set_var
    2: daily_task_action_inc_var
    3: daily_task_action_dec_var
    4: daily_task_action_add_sure_pool
    5: daily_task_action_add_possible_pool
