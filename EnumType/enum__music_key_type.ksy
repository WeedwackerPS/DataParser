meta:
  id: enum__music_key_type
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
    enum: music_key_type
enums:
  music_key_type:
    0: left_up
    1: left_right
    2: left_down
    3: left_left
    4: right_up
    5: right_right
    6: right_down
    7: right_left
