meta:
  id: enum__turn_mode
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
    enum: turn_mode
enums:
  turn_mode:
    0: prefer_target_to_input
    1: only_input
    2: only_target
    3: prefer_target_to_camera
    4: only_camera
