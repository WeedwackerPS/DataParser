meta:
  id: enum__common_player_tips_type
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
    enum: common_player_tips_type
enums:
  common_player_tips_type:
    0: common_player_tips_type_finish
    1: common_player_tips_type_start
    2: common_player_tips_type_fail
