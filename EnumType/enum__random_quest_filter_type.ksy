meta:
  id: enum__random_quest_filter_type
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
    enum: random_quest_filter_type
enums:
  random_quest_filter_type:
    0: rq_filter_none
    1: rq_filter_player_pos_ring
    2: rq_filter_npc
    3: rq_filter_player_level
