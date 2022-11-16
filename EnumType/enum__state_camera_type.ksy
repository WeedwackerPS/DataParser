meta:
  id: enum__state_camera_type
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
    enum: state_camera_type
enums:
  state_camera_type:
    0: normal_move
    1: combat_normal
    2: combat_be_hit
