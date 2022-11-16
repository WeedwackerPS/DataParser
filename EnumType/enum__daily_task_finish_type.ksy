meta:
  id: enum__daily_task_finish_type
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
    enum: daily_task_finish_type
enums:
  daily_task_finish_type:
    0: daily_finish_none
    1: daily_finish_monster_id_num
    2: daily_finish_gadget_id_num
    3: daily_finish_monster_config_num
    4: daily_finish_gadget_config_num
    5: daily_finish_monster_num
    6: daily_finish_chest_config
    7: daily_finish_gather
    8: daily_finish_challenge
