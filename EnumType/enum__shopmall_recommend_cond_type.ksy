meta:
  id: enum__shopmall_recommend_cond_type
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
    enum: shopmall_recommend_cond_type
enums:
  shopmall_recommend_cond_type:
    0: shopmall_recommend_cond_type_none
    1: shopmall_recommend_cond_player_level_ge
    2: shopmall_recommend_cond_time_begin
    3: shopmall_recommend_cond_time_end
