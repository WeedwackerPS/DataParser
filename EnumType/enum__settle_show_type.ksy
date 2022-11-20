meta:
  id: enum__settle_show_type
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
    enum: settle_show_type
enums:
  settle_show_type:
    0: settle_show_none
    1: settle_show_time_cost
    2: settle_show_open_chest_count
    3: settle_show_kill_monster_count
    4: settle_show_blackscreen
