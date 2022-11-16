meta:
  id: enum__daily_task_cond_type
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
    enum: daily_task_cond_type
enums:
  daily_task_cond_type:
    0: daily_task_cond_none
    1: daily_task_cond_var_eq
    2: daily_task_cond_var_ne
    3: daily_task_cond_var_gt
    4: daily_task_cond_var_lt
