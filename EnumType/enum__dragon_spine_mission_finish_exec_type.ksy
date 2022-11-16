meta:
  id: enum__dragon_spine_mission_finish_exec_type
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
    enum: dragon_spine_mission_finish_exec_type
enums:
  dragon_spine_mission_finish_exec_type:
    0: dragon_spine_exec_type_none
    1: dragon_spine_exec_type_ban_drop
    2: dragon_spine_exec_type_clear_item
