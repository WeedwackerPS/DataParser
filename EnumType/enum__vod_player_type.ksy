meta:
  id: enum__vod_player_type
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
    enum: vod_player_type
enums:
  vod_player_type:
    0: live
