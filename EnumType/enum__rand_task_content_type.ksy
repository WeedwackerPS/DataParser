meta:
  id: enum__rand_task_content_type
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
    enum: rand_task_content_type
enums:
  rand_task_content_type:
    0: rand_task_content_none
    1: rand_task_content_cleanup
    2: rand_task_content_rescue
    3: rand_task_content_guard
    4: rand_task_content_attack
    5: rand_task_content_investigate
    6: rand_task_content_pay
    7: rand_task_content_dungeon
    8: rand_task_content_tall
