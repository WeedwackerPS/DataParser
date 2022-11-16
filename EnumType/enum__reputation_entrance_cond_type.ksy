meta:
  id: enum__reputation_entrance_cond_type
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
    enum: reputation_entrance_cond_type
enums:
  reputation_entrance_cond_type:
    0: reputation_entrance_cond_none
    1: reputation_entrance_cond_reputation_level
    2: reputation_entrance_cond_player_level
    3: reputation_entrance_cond_quest
