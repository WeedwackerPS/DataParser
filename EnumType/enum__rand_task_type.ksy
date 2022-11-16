meta:
  id: enum__rand_task_type
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
    enum: rand_task_type
enums:
  rand_task_type:
    0: rand_task_quest
    1: rand_task_scene
