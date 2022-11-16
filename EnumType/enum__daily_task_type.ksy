meta:
  id: enum__daily_task_type
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
    enum: daily_task_type
enums:
  daily_task_type:
    0: daily_task_quest
    1: daily_task_scene
