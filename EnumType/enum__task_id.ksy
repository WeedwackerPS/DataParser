meta:
  id: enum__task_id
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__task_id:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: task_id
enums:
  task_id:
    0: move_task_id
    1: narrator_task_id
    2: lock_task_id
    3: thread_task_id
    4: transmit_btn_id
    5: force_walk_id
    6: steer_to_autonomy_id
    7: home_task_id
    8: safe_circle
    9: warning_task_id
