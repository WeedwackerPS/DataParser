meta:
  id: enum__audio_platform_move_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__audio_platform_move_type:
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
