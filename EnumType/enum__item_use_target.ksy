meta:
  id: enum__item_use_target
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
    enum: item_use_target
enums:
  item_use_target:
    0: item_use_target_none
    1: item_use_target_cur_avatar
    2: item_use_target_cur_team
    3: item_use_target_specify_avatar
    4: item_use_target_specify_alive_avatar
    5: item_use_target_specify_dead_avatar
