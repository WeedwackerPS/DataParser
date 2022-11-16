meta:
  id: enum__guide_multi_player_mode
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
    enum: guide_multi_player_mode
enums:
  guide_multi_player_mode:
    0: all
    1: host
    2: guest
