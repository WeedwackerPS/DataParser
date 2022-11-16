meta:
  id: enum__audio_platform_move_type
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
    enum: audio_platform_move_type
enums:
  audio_platform_move_type:
    0: none
    1: linear
    2: angular
    3: both
