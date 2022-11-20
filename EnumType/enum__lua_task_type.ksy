meta:
  id: enum__lua_task_type
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
    enum: lua_task_type
enums:
  lua_task_type:
    0: normal
    1: move
    2: threat
    3: free_style
    4: limit_region
    5: btn_trans
    6: steer
    7: speech_bubble
    8: force_walk
    9: home
    10: safe_circle
