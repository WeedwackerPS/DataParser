meta:
  id: enum__open_state_cond_type
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
    enum: open_state_cond_type
enums:
  open_state_cond_type:
    0: open_state_cond_none
    1: open_state_cond_player_level
    2: open_state_cond_quest
    3: open_state_cond_parent_quest
    4: open_state_city_reputation_level
    5: open_state_offering_level
