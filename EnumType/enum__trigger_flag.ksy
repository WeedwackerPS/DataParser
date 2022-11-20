meta:
  id: enum__trigger_flag
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
    enum: trigger_flag
enums:
  trigger_flag:
    0: none
    1: no_revive_region
    2: dead_region
    3: return_region
    4: camera_scene_look
    5: level_ability
    6: audio_event
    7: global_value
    8: teleport
